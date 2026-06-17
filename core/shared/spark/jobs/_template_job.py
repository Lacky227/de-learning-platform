"""Template Spark job — copy and adapt for lab-specific batch processing."""

from pyspark.sql import SparkSession


def main():
    spark = (
        SparkSession.builder
        .appName("template_job")
        .getOrCreate()
    )

    # TODO: read input data
    # df = spark.read.csv("/path/to/input")

    # TODO: implement transformation logic

    # TODO: write output
    # df.write.mode("overwrite").parquet("/path/to/output")

    spark.stop()


if __name__ == "__main__":
    main()
