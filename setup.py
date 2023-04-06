import setuptools

with open('README.md', 'r') as fh:
    long_description = fh.read()

setuptools.setup(
        name = 'ggGenshinPy',
        version = '0.0.1',
        author = 'RestlessTail',
        author_email = '1826930551@qq.com',
        description="a collection of matplotlib color maps",
        long_description = long_description,
        long_description_content_type = 'text/markdown',
        url = 'https://github.com/RestlessTail/ggGenshin',
        packages = setuptools.find_packages(),
        classifiers=[
            'Programming Language :: Python :: 3',
            'License :: OSI Approved :: GPLv3 License',
            'Operating System :: OS Independent',
            ]
        )

