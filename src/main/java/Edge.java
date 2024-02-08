import java.util.Objects;

public class Edge {
    public enum Label {
        CONTROL,
        CONTROL2,
        TARGET,
        NONE,
        PARAMETER
    }

    private Label sourceLabel;
    private Label targetLabel;
    private String qubit;

    public Edge(Label sourceLabel, Label targetLabel, String qubit) {
        this.sourceLabel = sourceLabel;
        this.targetLabel = targetLabel;
        this.qubit = qubit;
    }

    public Label getSourceLabel() {
        return sourceLabel;
    }

    public void setSourceLabel(Label sourceLabel) {
        this.sourceLabel = sourceLabel;
    }

    public Label getTargetLabel() {
        return targetLabel;
    }

    public void setTargetLabel(Label targetLabel) {
        this.targetLabel = targetLabel;
    }

    public String getQubit() {
        return qubit;
    }

    public void setQubit(String qubit) {
        this.qubit = qubit;
    }

    public boolean sameSourceTargetLabels(Edge e) {
        return this.sourceLabel.equals(e.getSourceLabel()) && this.targetLabel.equals(e.getTargetLabel());
    }

    public int hash() {
        return Objects.hash(sourceLabel, targetLabel, qubit);
    }

    @Override
    public String toString() {
        return "" + sourceLabel + "," + targetLabel + "," + qubit;
    }
}
