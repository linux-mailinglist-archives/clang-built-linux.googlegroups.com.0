Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVWSSD5AKGQEBK4LREI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 88942250A58
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 22:55:52 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id x13sf2728399pgf.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 13:55:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598302551; cv=pass;
        d=google.com; s=arc-20160816;
        b=xoxVcypqJuo+Pyj+JVlLHl33WTAp4JpoNx2wFQmG4F2EuVODVjkfbMxN9grJ6ZoRhB
         68Anx4bLdbY35PdxGrjMyMeLZsZz99mrmMQe08MjvZwAmJiCEVbeZA6tjy7XucFEDQX3
         DVk5F58q8WpmedfusW5GWKkwb3MWjn/hx76F/9myYJlmDdbn3q6GcREeAsZ+x49462O0
         hkQbcFVzg9pI43GfCcfd5si2MJukzfqc7FZVPiejZihq0Qrocuf8j6jf98r2W/xjH1a7
         tjgjX/BgjhVh54qUpX6bRNr5W6nQNdM7Pg//jbt92EgQew3MLn6/spBdVp438Iu0QtU3
         X++w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=+UETF6ixqZSYvrLirnncQebnHtti5TxwwHeipQp+4eo=;
        b=NrcHcP8M7OePECqc0UtHdO7IkjSfbpEHf6kX39HIZGAgsdIw4ZURxKWxv9nBZFscGA
         bc8FCko+NHowT67su+1ZHKMztj7hyiiLIDJISmJiQxU5yBnDF5LUMMglAQxrA9peZPW0
         kTQrP8X2rCPMVsuuiWrQQKaf11wP2XX8V4nKlVjDQiiEh3PNY6UWTE+n0dBF1cIjNH+f
         54HyjukcNvfSEhjJjOnTmGCqLiRWxrjkux5hYkdsaJYBLZ8Ry7ocqjHYO6WRNQmMf2cO
         4mkJdqvDcqrpxd+iYdWjbrByfqkCKd/Q3Mtn5gBIiq8HrbUpj77ztDNjr7GvJZocn2LG
         vfTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+UETF6ixqZSYvrLirnncQebnHtti5TxwwHeipQp+4eo=;
        b=MEvPWp79XXkL95hGJ8u07htv946edQkV2+j9tN37eR6K8posnJptnzTTwdyGrqLa1+
         AFpHxt5Vq35sIjhyPDZzTKr4Y3Sjmge5TkoKigR0j48f+U/fF4+sJDswOzUrlOUzA/kp
         aYixGv8Ir/QXJOic6pC7MqY6YgudJRYBePy0qTJqgL/em1KC5LfgfwauggEe3d/nm4Hg
         tlEEmMMo0LSiSNodHFvFWfpT7fxXtD4xEioTiw2pZtseLvpC5FQIu3ElcOoqxb9ufy1S
         I+g/YL3jdNWSH5sn6jGml4BGtovvODibzGsZlKkThUqMnu6Ddogncvs3r2fObXijcBbX
         +MeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+UETF6ixqZSYvrLirnncQebnHtti5TxwwHeipQp+4eo=;
        b=H/lZFIoUZW0l7VR0DtfT6oGEoYjDNmUZUS9WZGTw6nABjfuB4QwyQLdIqSwj58qv8q
         dIQWV7JfMN0omOCqgq7XZAFtG9PJbt0uZjcO+UIrU6Rn+QvoXWtquHeXYND2TqIHw3wn
         S2EXSGKwc29LhHYqPvbxCa0/GISUj9XSGn+90zQ9kTQY4pUxTHuXno0p1QonowcC3I9n
         uyR67TwSZkWCiomn11VKnU/1mxcCP/ufcx55mk4Bj4wZRvDEFPJW+u/ZpHKbo0S00Hhi
         VGQXbhfspRbYYYyTqAFR9EKIVPRcgdmtIdKp7dueEw1jERF141iK4dQLalwuIteYTEtE
         eLHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531og3fGXb8hmwTnmtPOHStVoyjh5s1BjxEzhoGcVpgpXzOBOMm1
	vWnhvedNGdLKyLlv2KZmb3w=
X-Google-Smtp-Source: ABdhPJyNIBubM8J5Vqc9sebBYzX+1i3qAwT26j2we5bGjBd+2oEXZj9D5sCqcUVWx4z4O13QMa1pQA==
X-Received: by 2002:a17:90b:4d05:: with SMTP id mw5mr886191pjb.76.1598302550642;
        Mon, 24 Aug 2020 13:55:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f158:: with SMTP id o24ls3220383pgk.4.gmail; Mon, 24 Aug
 2020 13:55:50 -0700 (PDT)
X-Received: by 2002:aa7:96f4:: with SMTP id i20mr784819pfq.312.1598302550068;
        Mon, 24 Aug 2020 13:55:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598302550; cv=none;
        d=google.com; s=arc-20160816;
        b=dvb5sTBuxDsM1iOmn23lZxOM57EvPRCVP1QM22J+1tiTpeSCa/2qgwPiq5VZP+ZO0E
         NF1lcexPhF1WflXkQT1EV6c33bDRqv9R7EtMXVVhA8TU0D2hPKFp86SHKFG1MdYBV4NK
         Qub1AaKKaD8Le+BX4yUGm8sqCprZjbNMv6IsegVioVBDTBPIG0uf3MusKNI2AOuVkjm3
         5v6JDEH8X6M+BuiZrt14cqTb1Pz6+oP52pS8xLuvSMos9PRnxIQ+i9yUZJSthGVYQ2+U
         +61HZ55GUiIyBGn7NiNxi5X7zrHpP3m2r1GjC103a4L0GiLI/tjtmDTtXJwqoRKGtO0Q
         p4JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=B4QosnB44v0pX4nujkj011aO0GxfdA8ySBfd2Mc8Yfc=;
        b=cUI0HgZaSs8zuSmJ1WK5tT1hh9vutYXXWjvCa9/THkhcbSEZdjpovfl3mbzyJgy+P7
         dyb3h99fIcdpHEFewSbfTL7EGzrQSPwb197PIDm8tGs9U7QHwwCe3UDlBeYv8etIqHvt
         eJfNUBnucgf6uDUkecEdHpqRYRwq5HsKbTtEW8/Zi/g0jd//9sxeLDRyBLEmwqHKmmWE
         G0xoJBfg4ddDdsXZc0MO3Wuc/X2cgu98d2eGQE1BJDioqMg5NRAidiT3G1wA2l/92X2d
         QgtI+uvWvNCPFvA7rCk7TRslVV+avXu6D5ieLfUNNml600txoFCy++9Wlu25muCpCHZZ
         +UoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id b21si545426plz.2.2020.08.24.13.55.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Aug 2020 13:55:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: oXc5yAMsNGE/cOv3ayUCA9zjoZGTu3uJB85mV7U38OWwLiFkp5xUmXmZ1HcGf0sA6qvFEkSGHj
 VxgF+RF9OY5Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="155979091"
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; 
   d="gz'50?scan'50,208,50";a="155979091"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2020 13:55:49 -0700
IronPort-SDR: 3iXG5xoYXJ4Lc7zM9TedH0whbZO526EAMXHPWYNb/Qy4lfL+t6f1E9hDSDxoEpv6cvJvXZX09X
 15cgLr6DV99g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; 
   d="gz'50?scan'50,208,50";a="322484462"
Received: from lkp-server01.sh.intel.com (HELO c420d4f0765f) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 24 Aug 2020 13:55:47 -0700
Received: from kbuild by c420d4f0765f with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kAJVK-0000T6-UK; Mon, 24 Aug 2020 20:55:46 +0000
Date: Tue, 25 Aug 2020 04:55:27 +0800
From: kernel test robot <lkp@intel.com>
To: Christoph Hellwig <hch@lst.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [hch-block:gendisk-lookup 17/19] drivers/block/floppy.c:4110:42:
 warning: variable 'new_dev' is uninitialized when used here
Message-ID: <202008250418.2pBXkk8d%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="XsQoSWH+UP9D9v3l"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>


--XsQoSWH+UP9D9v3l
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.infradead.org/users/hch/block.git gendisk-lookup
head:   fb73c864e566d8e46b8c75caa3a455674548308d
commit: 6bc1ba7d09b8e4e5d4915592fb1430b640b86599 [17/19] floppy: remove support for "alias" minors
config: x86_64-randconfig-a003-20200824 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b587ca93be114d07ec3bf654add97d7872325281)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout 6bc1ba7d09b8e4e5d4915592fb1430b640b86599
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/block/floppy.c:4110:42: warning: variable 'new_dev' is uninitialized when used here [-Wuninitialized]
           set_capacity(disks[drive], floppy_sizes[new_dev]);
                                                   ^~~~~~~
   drivers/block/floppy.c:4058:22: note: initialize the variable 'new_dev' to silence this warning
           int old_dev, new_dev;
                               ^
                                = 0
   1 warning generated.

git remote add hch-block git://git.infradead.org/users/hch/block.git
git fetch --no-tags hch-block gendisk-lookup
git checkout 6bc1ba7d09b8e4e5d4915592fb1430b640b86599
vim +/new_dev +4110 drivers/block/floppy.c

^1da177e4c3f41 Linus Torvalds 2005-04-16  4049  
^1da177e4c3f41 Linus Torvalds 2005-04-16  4050  /*
^1da177e4c3f41 Linus Torvalds 2005-04-16  4051   * floppy_open check for aliasing (/dev/fd0 can be the same as
^1da177e4c3f41 Linus Torvalds 2005-04-16  4052   * /dev/PS0 etc), and disallows simultaneous access to the same
^1da177e4c3f41 Linus Torvalds 2005-04-16  4053   * drive with different device numbers.
^1da177e4c3f41 Linus Torvalds 2005-04-16  4054   */
a4af9b48cb480f Al Viro        2008-03-02  4055  static int floppy_open(struct block_device *bdev, fmode_t mode)
^1da177e4c3f41 Linus Torvalds 2005-04-16  4056  {
a4af9b48cb480f Al Viro        2008-03-02  4057  	int drive = (long)bdev->bd_disk->private_data;
a4af9b48cb480f Al Viro        2008-03-02  4058  	int old_dev, new_dev;
^1da177e4c3f41 Linus Torvalds 2005-04-16  4059  	int try;
^1da177e4c3f41 Linus Torvalds 2005-04-16  4060  	int res = -EBUSY;
^1da177e4c3f41 Linus Torvalds 2005-04-16  4061  	char *tmp;
^1da177e4c3f41 Linus Torvalds 2005-04-16  4062  
2a48fc0ab24241 Arnd Bergmann  2010-06-02  4063  	mutex_lock(&floppy_mutex);
b1c82b5c55851b Jes Sorensen   2006-03-23  4064  	mutex_lock(&open_lock);
8d9d34e25a372b Willy Tarreau  2020-02-24  4065  	old_dev = drive_state[drive].fd_device;
a4af9b48cb480f Al Viro        2008-03-02  4066  	if (opened_bdev[drive] && opened_bdev[drive] != bdev)
^1da177e4c3f41 Linus Torvalds 2005-04-16  4067  		goto out2;
^1da177e4c3f41 Linus Torvalds 2005-04-16  4068  
8d9d34e25a372b Willy Tarreau  2020-02-24  4069  	if (!drive_state[drive].fd_ref && (drive_params[drive].flags & FD_BROKEN_DCL)) {
8d9d34e25a372b Willy Tarreau  2020-02-24  4070  		set_bit(FD_DISK_CHANGED_BIT, &drive_state[drive].flags);
8d9d34e25a372b Willy Tarreau  2020-02-24  4071  		set_bit(FD_VERIFY_BIT, &drive_state[drive].flags);
^1da177e4c3f41 Linus Torvalds 2005-04-16  4072  	}
^1da177e4c3f41 Linus Torvalds 2005-04-16  4073  
8d9d34e25a372b Willy Tarreau  2020-02-24  4074  	drive_state[drive].fd_ref++;
^1da177e4c3f41 Linus Torvalds 2005-04-16  4075  
a4af9b48cb480f Al Viro        2008-03-02  4076  	opened_bdev[drive] = bdev;
^1da177e4c3f41 Linus Torvalds 2005-04-16  4077  
^1da177e4c3f41 Linus Torvalds 2005-04-16  4078  	res = -ENXIO;
^1da177e4c3f41 Linus Torvalds 2005-04-16  4079  
^1da177e4c3f41 Linus Torvalds 2005-04-16  4080  	if (!floppy_track_buffer) {
^1da177e4c3f41 Linus Torvalds 2005-04-16  4081  		/* if opening an ED drive, reserve a big buffer,
^1da177e4c3f41 Linus Torvalds 2005-04-16  4082  		 * else reserve a small one */
1ce9ae9654c910 Willy Tarreau  2020-02-24  4083  		if ((drive_params[drive].cmos == 6) || (drive_params[drive].cmos == 5))
^1da177e4c3f41 Linus Torvalds 2005-04-16  4084  			try = 64;	/* Only 48 actually useful */
^1da177e4c3f41 Linus Torvalds 2005-04-16  4085  		else
^1da177e4c3f41 Linus Torvalds 2005-04-16  4086  			try = 32;	/* Only 24 actually useful */
^1da177e4c3f41 Linus Torvalds 2005-04-16  4087  
^1da177e4c3f41 Linus Torvalds 2005-04-16  4088  		tmp = (char *)fd_dma_mem_alloc(1024 * try);
^1da177e4c3f41 Linus Torvalds 2005-04-16  4089  		if (!tmp && !floppy_track_buffer) {
^1da177e4c3f41 Linus Torvalds 2005-04-16  4090  			try >>= 1;	/* buffer only one side */
^1da177e4c3f41 Linus Torvalds 2005-04-16  4091  			INFBOUND(try, 16);
^1da177e4c3f41 Linus Torvalds 2005-04-16  4092  			tmp = (char *)fd_dma_mem_alloc(1024 * try);
^1da177e4c3f41 Linus Torvalds 2005-04-16  4093  		}
a81ee5447157a4 Joe Perches    2010-03-10  4094  		if (!tmp && !floppy_track_buffer)
^1da177e4c3f41 Linus Torvalds 2005-04-16  4095  			fallback_on_nodma_alloc(&tmp, 2048 * try);
^1da177e4c3f41 Linus Torvalds 2005-04-16  4096  		if (!tmp && !floppy_track_buffer) {
^1da177e4c3f41 Linus Torvalds 2005-04-16  4097  			DPRINT("Unable to allocate DMA memory\n");
^1da177e4c3f41 Linus Torvalds 2005-04-16  4098  			goto out;
^1da177e4c3f41 Linus Torvalds 2005-04-16  4099  		}
^1da177e4c3f41 Linus Torvalds 2005-04-16  4100  		if (floppy_track_buffer) {
^1da177e4c3f41 Linus Torvalds 2005-04-16  4101  			if (tmp)
^1da177e4c3f41 Linus Torvalds 2005-04-16  4102  				fd_dma_mem_free((unsigned long)tmp, try * 1024);
^1da177e4c3f41 Linus Torvalds 2005-04-16  4103  		} else {
^1da177e4c3f41 Linus Torvalds 2005-04-16  4104  			buffer_min = buffer_max = -1;
^1da177e4c3f41 Linus Torvalds 2005-04-16  4105  			floppy_track_buffer = tmp;
^1da177e4c3f41 Linus Torvalds 2005-04-16  4106  			max_buffer_sectors = try;
^1da177e4c3f41 Linus Torvalds 2005-04-16  4107  		}
^1da177e4c3f41 Linus Torvalds 2005-04-16  4108  	}
^1da177e4c3f41 Linus Torvalds 2005-04-16  4109  
a4af9b48cb480f Al Viro        2008-03-02 @4110  	set_capacity(disks[drive], floppy_sizes[new_dev]);
a4af9b48cb480f Al Viro        2008-03-02  4111  	if (old_dev != -1 && old_dev != new_dev) {
^1da177e4c3f41 Linus Torvalds 2005-04-16  4112  		if (buffer_drive == drive)
^1da177e4c3f41 Linus Torvalds 2005-04-16  4113  			buffer_track = -1;
^1da177e4c3f41 Linus Torvalds 2005-04-16  4114  	}
^1da177e4c3f41 Linus Torvalds 2005-04-16  4115  
f9d322bdb1e241 Willy Tarreau  2020-02-24  4116  	if (fdc_state[FDC(drive)].rawcmd == 1)
f9d322bdb1e241 Willy Tarreau  2020-02-24  4117  		fdc_state[FDC(drive)].rawcmd = 2;
^1da177e4c3f41 Linus Torvalds 2005-04-16  4118  
f2791e7eadf437 Jens Axboe     2016-08-25  4119  	if (!(mode & FMODE_NDELAY)) {
f2791e7eadf437 Jens Axboe     2016-08-25  4120  		if (mode & (FMODE_READ|FMODE_WRITE)) {
8d9d34e25a372b Willy Tarreau  2020-02-24  4121  			drive_state[drive].last_checked = 0;
8d9d34e25a372b Willy Tarreau  2020-02-24  4122  			clear_bit(FD_OPEN_SHOULD_FAIL_BIT,
8d9d34e25a372b Willy Tarreau  2020-02-24  4123  				  &drive_state[drive].flags);
a4af9b48cb480f Al Viro        2008-03-02  4124  			check_disk_change(bdev);
8d9d34e25a372b Willy Tarreau  2020-02-24  4125  			if (test_bit(FD_DISK_CHANGED_BIT, &drive_state[drive].flags))
^1da177e4c3f41 Linus Torvalds 2005-04-16  4126  				goto out;
8d9d34e25a372b Willy Tarreau  2020-02-24  4127  			if (test_bit(FD_OPEN_SHOULD_FAIL_BIT, &drive_state[drive].flags))
7b7b68bba5ef23 Jiri Kosina    2014-01-10  4128  				goto out;
f2791e7eadf437 Jens Axboe     2016-08-25  4129  		}
^1da177e4c3f41 Linus Torvalds 2005-04-16  4130  		res = -EROFS;
e029853612ba59 Joe Perches    2010-03-10  4131  		if ((mode & FMODE_WRITE) &&
8d9d34e25a372b Willy Tarreau  2020-02-24  4132  		    !test_bit(FD_DISK_WRITABLE_BIT, &drive_state[drive].flags))
^1da177e4c3f41 Linus Torvalds 2005-04-16  4133  			goto out;
f2791e7eadf437 Jens Axboe     2016-08-25  4134  	}
b1c82b5c55851b Jes Sorensen   2006-03-23  4135  	mutex_unlock(&open_lock);
2a48fc0ab24241 Arnd Bergmann  2010-06-02  4136  	mutex_unlock(&floppy_mutex);
^1da177e4c3f41 Linus Torvalds 2005-04-16  4137  	return 0;
^1da177e4c3f41 Linus Torvalds 2005-04-16  4138  out:
8d9d34e25a372b Willy Tarreau  2020-02-24  4139  	drive_state[drive].fd_ref--;
bfa10b8c98bb33 Jiri Kosina    2012-05-18  4140  
8d9d34e25a372b Willy Tarreau  2020-02-24  4141  	if (!drive_state[drive].fd_ref)
^1da177e4c3f41 Linus Torvalds 2005-04-16  4142  		opened_bdev[drive] = NULL;
^1da177e4c3f41 Linus Torvalds 2005-04-16  4143  out2:
b1c82b5c55851b Jes Sorensen   2006-03-23  4144  	mutex_unlock(&open_lock);
2a48fc0ab24241 Arnd Bergmann  2010-06-02  4145  	mutex_unlock(&floppy_mutex);
^1da177e4c3f41 Linus Torvalds 2005-04-16  4146  	return res;
^1da177e4c3f41 Linus Torvalds 2005-04-16  4147  }
^1da177e4c3f41 Linus Torvalds 2005-04-16  4148  

:::::: The code at line 4110 was first introduced by commit
:::::: a4af9b48cb480f5016947bbd3f396c265c7cb368 [PATCH] switch floppy

:::::: TO: Al Viro <viro@zeniv.linux.org.uk>
:::::: CC: Al Viro <viro@zeniv.linux.org.uk>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008250418.2pBXkk8d%25lkp%40intel.com.

--XsQoSWH+UP9D9v3l
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AA==

--XsQoSWH+UP9D9v3l--
