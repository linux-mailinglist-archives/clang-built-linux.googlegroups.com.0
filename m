Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQN4XL6QKGQEEEP42HQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDEA2B1DD8
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 15:54:59 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id e1sf3958593otb.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 06:54:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605279298; cv=pass;
        d=google.com; s=arc-20160816;
        b=TcU1X3GJlNuLe40ORjdxriUsnC9xnoMjbBDSAKMaYYQxuL3fFtIZlNEFQ6NYVmcOMj
         S9kxWF6Jgb2F4YjR6kSzSBbXiRt8jW9fPQPFTGL4sm8Ya+txbSAXh92CFQUd433uC+9t
         SfwYWnDsUp9ulTH4nG7OxzfOkQG44tV+gz/tzeKaIi0IorUtXGafEhQXadfNLTJOcX9T
         VZYHlfAoF08SqTxDDjQZNhgmabFGuVZfGYFq9MtQ0olJiBA6xebcjmbcasrOkBJXQUGF
         xWRhFTYBawvpx77Mb/95QuxwX6PcZXnvpRxB0drSWNx02d73Kt9YHWemfx+KdFrUVxtm
         JJbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=SZHv5XJeFkloDt1yjszObI7NeeF8SLe37t9NpaI1hpg=;
        b=B+Zt5evRB90a0jDjxyOzS7V6A4l7fcMxk2bB8Ki/Ei7aWfNVgXD+DnS3as5DqSqZIH
         4L6uMMifKImK9xo1mAqKx1QFBjHY+HDZYuelkppX2fAkVGBbuj5wLtL6LeANKKfQRiWv
         NZb0NgXZyE/2xNlr+aaMlFC9Z9/zn252c+Em4pVBbk/KwV+/DGprStFSCRhH8Ct9tcAh
         pqSZfK5ahcL4jQcUgLctW/jHFemCMOSoFfuMFd2OP0sYBSw0huUmzx1oFWJmEgt1MVnG
         ePk2Ti3dBw3X8t9ax+BsGC4IN+sNsF9OhbpGEbZKnkbLs4//Ef1aa7E/B4zJ2v0d/ss5
         pz3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SZHv5XJeFkloDt1yjszObI7NeeF8SLe37t9NpaI1hpg=;
        b=IqayjGEu18Vxl1x34IfAD24amOEFb2TLYexf8Xndmctik7kRl7EZpfrhzP7ms98B0j
         qOuj0bCPSpKzj9H93PofCffEWL7Vf2k5iPg/DiatSfLsm6ImoGLQH7o/aJxvxlLDMK4/
         WxR+1GvVt8T6oT75mzm9XW8VBBm6lbmhxsc5wCE+pLoHu0J8O6na5J17g2vVqD2lmfsZ
         qLhanm0QtkoqkRiuGgpq38jAVJyBq/mUIxerYmNK39opV6RTXTPm83+zubD0dmV+JaPu
         z8F7rz956Y/MLrOZc+idabNzt52tT4A4FATtL8U6IeX0ZQRU6GluRw4u3RCUzHVzkicK
         5SlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SZHv5XJeFkloDt1yjszObI7NeeF8SLe37t9NpaI1hpg=;
        b=uF6wvy4KMWITqgIkausotaZviWicbrDVG/B/Kgk3IAOFfJXkABt6DYwluC0J9tPVIu
         QHmNB/ABvs1Xy99xEvQrvpSgasfHikg+QRpBzWf44P85wzrql5nYgZ6ipQR/lBGsW8mE
         inNNcDxs/f5y7DsCgUH8MM04m68uQ+47rJ3jpHXl4CejqZOWcrZTsq4TKNQPdSq4AN15
         V9ztY/yji6D8yQV1KyvWmAP8U8dETld9m96KNQf/NffT5rqVUxwnCuOPpbzGfn6y57f5
         vqegkscfpSysyDawLf6wrRPZ7wLtsU2Y0ZNUYlp7BaeL6/pbJOeP3mNCxIVfXpsSHWAG
         Qlnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531gwFa6JMieGmSfUzkUqzg/inRyluVf8AP8/3su5+zVlbu5fJkG
	rOJrjVrzTCxJK3X31zJLQJQ=
X-Google-Smtp-Source: ABdhPJxvT3H08KBSU6z3xZafxuHJuupDJWd3BnJ4+ZvbZgpsaF9TuGK+/Io3gFym2roiMVs8gomA8Q==
X-Received: by 2002:a9d:66ca:: with SMTP id t10mr1702265otm.13.1605279297742;
        Fri, 13 Nov 2020 06:54:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:66cd:: with SMTP id t13ls1608686otm.8.gmail; Fri, 13 Nov
 2020 06:54:57 -0800 (PST)
X-Received: by 2002:a9d:4c92:: with SMTP id m18mr1826086otf.248.1605279297277;
        Fri, 13 Nov 2020 06:54:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605279297; cv=none;
        d=google.com; s=arc-20160816;
        b=oZPSVeAFwqTR7UHvrSCSrKZPAtDIgnF9/6YkAJ0clkDWE/mf2bkVnpBPyHAHvrqDQd
         RHvGnifyGXvmDTDfpl+o1iffL8J7bxthTDnzD7DQK68eG20b/5RSF/2M8NLkKmZXhIbY
         FhKAq0y7W8/NjUKNerONX+OX2YEcTY6/O6ES3VlvbdXoVf/yqEouyix9dvhP/WMfdMqu
         QeOkPvRjOj19wPJeeccb+E/61DFxIXNvvZ8Q+wDFmMJ8qFSyLoj8jWx4+0TF6EiQ0U8V
         IzWEBDMtXUJfnIZUVGzxlewGgGn2ez9Lk67GP1+B3ldC2kPfNBiizYWzOi1cVOwnBkzd
         CTdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=+CKyP5JHxgtUVbVvBQKS0MyzBrxn6QbIQimyBGJx3h8=;
        b=ag3gqNhCesdPWSENg4SDx8aedDgh3eeBJ4GNzL+vhg4QRW24qNPskAqv5kPBZ8Z4tA
         I2jx9OD1Qv9gy9eO0Oi/OCOhx8IyLpBpbR39Y6tgx/Bbr4WeL3zEWM/O/zW8slXEfWwD
         vp2+PeheY2Tlqr6J3MxWxxgcFgbgU6mDjBbKYNDCZpEg2LVu044GDjurH3FIKyp3aR9i
         DOdDDyQmnBFoNtJAuUlpmaZdD79aM5nLysywOa8aHKgNxfzVza3OS5CC6oCw0ZHdArKz
         21jP+ShWNl2QCjK0ldOEm6v4d/n2DZD0xRbx5GCczXmJaf0Auk0qdkA8lRUlvbGv4vbI
         IyRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id h8si662969oih.2.2020.11.13.06.54.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Nov 2020 06:54:57 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: z+k5a2nJlkXVF2mgqgG/5aGi9izlJFYDlJ8DCEhgOCVu8p242uYPX6HAh1jtuiMuNwuvuen3RB
 0/m4IamTRL4A==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="150330825"
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; 
   d="gz'50?scan'50,208,50";a="150330825"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2020 06:54:55 -0800
IronPort-SDR: j+UhgOwAIfy9fvRYqGrSBSSwR+sEbfDY82X/csxUNw2lTBYxRfZPoC/F/x+8ZhCjNzf0HvFjpX
 P74nXHyGhx/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; 
   d="gz'50?scan'50,208,50";a="366960401"
Received: from lkp-server02.sh.intel.com (HELO 697932c29306) ([10.239.97.151])
  by orsmga007.jf.intel.com with ESMTP; 13 Nov 2020 06:54:53 -0800
Received: from kbuild by 697932c29306 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kdaTV-0000Ml-43; Fri, 13 Nov 2020 14:54:53 +0000
Date: Fri, 13 Nov 2020 22:54:27 +0800
From: kernel test robot <lkp@intel.com>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [morimoto-linux:fw-cleanup-2020-11-10-v1 71/78]
 sound/soc/generic/audio-graph-card.c:265:14: error: no member named
 'cpu_dai' in 'struct simple_dai_props'
Message-ID: <202011132222.VoAsvoxF-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="r5Pyd7+fXNt84Ff3"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--r5Pyd7+fXNt84Ff3
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/morimoto/linux fw-cleanup-2020-11-10-v1
head:   9c69461b4cf4ebccbe80471cd38a70320d9a27ee
commit: 22ad805d527057b9972b3e64dc7fd15674edc0a9 [71/78] simple-card-utils: prepare for Multi-CPU/Codec support
config: x86_64-randconfig-a011-20201110 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 4d81c8adb6ed9840257f6cb6b93f60856d422a15)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/morimoto/linux/commit/22ad805d527057b9972b3e64dc7fd15674edc0a9
        git remote add morimoto-linux https://github.com/morimoto/linux
        git fetch --no-tags morimoto-linux fw-cleanup-2020-11-10-v1
        git checkout 22ad805d527057b9972b3e64dc7fd15674edc0a9
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> sound/soc/generic/audio-graph-card.c:265:14: error: no member named 'cpu_dai' in 'struct simple_dai_props'
                   dai_props->cpu_dai      = &priv->dais[li->dais++];
                   ~~~~~~~~~  ^
>> sound/soc/generic/audio-graph-card.c:310:14: error: no member named 'codec_dai' in 'struct simple_dai_props'
                   dai_props->codec_dai    = &priv->dais[li->dais++];
                   ~~~~~~~~~  ^
   sound/soc/generic/audio-graph-card.c:394:13: error: no member named 'cpu_dai' in 'struct simple_dai_props'
           dai_props->cpu_dai      = &priv->dais[li->dais++];
           ~~~~~~~~~  ^
   sound/soc/generic/audio-graph-card.c:396:13: error: no member named 'codec_dai' in 'struct simple_dai_props'
           dai_props->codec_dai    = &priv->dais[li->dais++];
           ~~~~~~~~~  ^
   4 errors generated.

vim +265 sound/soc/generic/audio-graph-card.c

4346a745df4107d Kuninori Morimoto    2019-03-18  211  
e59289cda8dec01 Kuninori Morimoto    2019-03-20  212  static int graph_dai_link_of_dpcm(struct asoc_simple_priv *priv,
56eb818191fbe4b Kuninori Morimoto    2018-12-14  213  				  struct device_node *cpu_ep,
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  214  				  struct device_node *codec_ep,
dd98fbc558a0357 Kuninori Morimoto    2018-12-20  215  				  struct link_info *li,
dd98fbc558a0357 Kuninori Morimoto    2018-12-20  216  				  int dup_codec)
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  217  {
e59289cda8dec01 Kuninori Morimoto    2019-03-20  218  	struct device *dev = simple_priv_to_dev(priv);
77e9dd1b66a49b8 Sameer Pujar         2020-11-02  219  	struct snd_soc_card *card = simple_priv_to_card(priv);
e59289cda8dec01 Kuninori Morimoto    2019-03-20  220  	struct snd_soc_dai_link *dai_link = simple_priv_to_link(priv, li->link);
e59289cda8dec01 Kuninori Morimoto    2019-03-20  221  	struct simple_dai_props *dai_props = simple_priv_to_props(priv, li->link);
dd98fbc558a0357 Kuninori Morimoto    2018-12-20  222  	struct device_node *top = dev->of_node;
1e4771a62fd7a6b Kuninori Morimoto    2018-12-20  223  	struct device_node *ep = li->cpu ? cpu_ep : codec_ep;
dd98fbc558a0357 Kuninori Morimoto    2018-12-20  224  	struct device_node *port;
dd98fbc558a0357 Kuninori Morimoto    2018-12-20  225  	struct device_node *ports;
dd98fbc558a0357 Kuninori Morimoto    2018-12-20  226  	struct device_node *node;
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  227  	struct asoc_simple_dai *dai;
f107294c6422e77 Kuninori Morimoto    2019-06-06  228  	struct snd_soc_dai_link_component *cpus = dai_link->cpus;
66164a4da30dd29 Kuninori Morimoto    2018-12-14  229  	struct snd_soc_dai_link_component *codecs = dai_link->codecs;
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  230  	int ret;
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  231  
ca2f809d131fdfc Sameer Pujar         2020-11-02  232  	/*
ca2f809d131fdfc Sameer Pujar         2020-11-02  233  	 * Codec endpoint can be NULL for pluggable audio HW.
ca2f809d131fdfc Sameer Pujar         2020-11-02  234  	 * Platform DT can populate the Codec endpoint depending on the
ca2f809d131fdfc Sameer Pujar         2020-11-02  235  	 * plugged HW.
ca2f809d131fdfc Sameer Pujar         2020-11-02  236  	 */
ca2f809d131fdfc Sameer Pujar         2020-11-02  237  	if (!li->cpu && !codec_ep)
ca2f809d131fdfc Sameer Pujar         2020-11-02  238  		return 0;
ca2f809d131fdfc Sameer Pujar         2020-11-02  239  
dd98fbc558a0357 Kuninori Morimoto    2018-12-20  240  	/* Do it all CPU endpoint, and 1st Codec endpoint */
dd98fbc558a0357 Kuninori Morimoto    2018-12-20  241  	if (!li->cpu && dup_codec)
dd98fbc558a0357 Kuninori Morimoto    2018-12-20  242  		return 0;
dd98fbc558a0357 Kuninori Morimoto    2018-12-20  243  
dd98fbc558a0357 Kuninori Morimoto    2018-12-20  244  	port	= of_get_parent(ep);
dd98fbc558a0357 Kuninori Morimoto    2018-12-20  245  	ports	= of_get_parent(port);
dd98fbc558a0357 Kuninori Morimoto    2018-12-20  246  	node	= of_graph_get_port_parent(ep);
dd98fbc558a0357 Kuninori Morimoto    2018-12-20  247  
1e4771a62fd7a6b Kuninori Morimoto    2018-12-20  248  	li->link++;
1e4771a62fd7a6b Kuninori Morimoto    2018-12-20  249  
1e4771a62fd7a6b Kuninori Morimoto    2018-12-20  250  	dev_dbg(dev, "link_of DPCM (%pOF)\n", ep);
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  251  
1e4771a62fd7a6b Kuninori Morimoto    2018-12-20  252  	if (li->cpu) {
8f7f298a333761a Kuninori Morimoto    2019-03-20  253  		int is_single_links = 0;
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  254  
9764beeae7cc477 Kuninori Morimoto    2019-10-15  255  		/* Codec is dummy */
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  256  		codecs->of_node		= NULL;
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  257  		codecs->dai_name	= "snd-soc-dummy-dai";
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  258  		codecs->name		= "snd-soc-dummy";
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  259  
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  260  		/* FE settings */
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  261  		dai_link->dynamic		= 1;
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  262  		dai_link->dpcm_merged_format	= 1;
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  263  
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  264  		dai =
1e4771a62fd7a6b Kuninori Morimoto    2018-12-20 @265  		dai_props->cpu_dai	= &priv->dais[li->dais++];
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  266  
ad11e59f52d6fc7 Kuninori Morimoto    2019-03-20  267  		ret = asoc_simple_parse_cpu(ep, dai_link, &is_single_links);
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  268  		if (ret)
aa2e362cb6b3f5c Wen Yang             2019-07-10  269  			goto out_put_node;
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  270  
22ad805d527057b Kuninori Morimoto    2020-11-09  271  		ret = asoc_simple_parse_clk_cpu(dev, ep, dai_link, dai_props, 0);
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  272  		if (ret < 0)
aa2e362cb6b3f5c Wen Yang             2019-07-10  273  			goto out_put_node;
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  274  
ad11e59f52d6fc7 Kuninori Morimoto    2019-03-20  275  		ret = asoc_simple_set_dailink_name(dev, dai_link,
7cdd350b6a98ce0 Sameer Pujar         2020-11-02  276  						   "fe.%pOFP.%s",
7cdd350b6a98ce0 Sameer Pujar         2020-11-02  277  						   cpus->of_node,
f107294c6422e77 Kuninori Morimoto    2019-06-06  278  						   cpus->dai_name);
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  279  		if (ret < 0)
aa2e362cb6b3f5c Wen Yang             2019-07-10  280  			goto out_put_node;
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  281  
77e9dd1b66a49b8 Sameer Pujar         2020-11-02  282  		/*
77e9dd1b66a49b8 Sameer Pujar         2020-11-02  283  		 * In BE<->BE connections it is not required to create
77e9dd1b66a49b8 Sameer Pujar         2020-11-02  284  		 * PCM devices at CPU end of the dai link and thus 'no_pcm'
77e9dd1b66a49b8 Sameer Pujar         2020-11-02  285  		 * flag needs to be set. It is useful when there are many
77e9dd1b66a49b8 Sameer Pujar         2020-11-02  286  		 * BE components and some of these have to be connected to
77e9dd1b66a49b8 Sameer Pujar         2020-11-02  287  		 * form a valid audio path.
77e9dd1b66a49b8 Sameer Pujar         2020-11-02  288  		 *
77e9dd1b66a49b8 Sameer Pujar         2020-11-02  289  		 * For example: FE <-> BE1 <-> BE2 <-> ... <-> BEn where
77e9dd1b66a49b8 Sameer Pujar         2020-11-02  290  		 * there are 'n' BE components in the path.
77e9dd1b66a49b8 Sameer Pujar         2020-11-02  291  		 */
77e9dd1b66a49b8 Sameer Pujar         2020-11-02  292  		if (card->component_chaining && !soc_component_is_pcm(cpus))
77e9dd1b66a49b8 Sameer Pujar         2020-11-02  293  			dai_link->no_pcm = 1;
77e9dd1b66a49b8 Sameer Pujar         2020-11-02  294  
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  295  		/* card->num_links includes Codec */
ad11e59f52d6fc7 Kuninori Morimoto    2019-03-20  296  		asoc_simple_canonicalize_cpu(dai_link, is_single_links);
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  297  	} else {
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  298  		struct snd_soc_codec_conf *cconf;
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  299  
9764beeae7cc477 Kuninori Morimoto    2019-10-15  300  		/* CPU is dummy */
f107294c6422e77 Kuninori Morimoto    2019-06-06  301  		cpus->of_node		= NULL;
f107294c6422e77 Kuninori Morimoto    2019-06-06  302  		cpus->dai_name		= "snd-soc-dummy-dai";
f107294c6422e77 Kuninori Morimoto    2019-06-06  303  		cpus->name		= "snd-soc-dummy";
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  304  
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  305  		/* BE settings */
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  306  		dai_link->no_pcm		= 1;
629f75440a68220 Kuninori Morimoto    2019-03-20  307  		dai_link->be_hw_params_fixup	= asoc_simple_be_hw_params_fixup;
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  308  
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  309  		dai =
1e4771a62fd7a6b Kuninori Morimoto    2018-12-20 @310  		dai_props->codec_dai	= &priv->dais[li->dais++];
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  311  
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  312  		cconf =
1e4771a62fd7a6b Kuninori Morimoto    2018-12-20  313  		dai_props->codec_conf	= &priv->codec_conf[li->conf++];
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  314  
ad11e59f52d6fc7 Kuninori Morimoto    2019-03-20  315  		ret = asoc_simple_parse_codec(ep, dai_link);
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  316  		if (ret < 0)
aa2e362cb6b3f5c Wen Yang             2019-07-10  317  			goto out_put_node;
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  318  
22ad805d527057b Kuninori Morimoto    2020-11-09  319  		ret = asoc_simple_parse_clk_codec(dev, ep, dai_link, dai_props, 0);
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  320  		if (ret < 0)
aa2e362cb6b3f5c Wen Yang             2019-07-10  321  			goto out_put_node;
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  322  
ad11e59f52d6fc7 Kuninori Morimoto    2019-03-20  323  		ret = asoc_simple_set_dailink_name(dev, dai_link,
7cdd350b6a98ce0 Sameer Pujar         2020-11-02  324  						   "be.%pOFP.%s",
7cdd350b6a98ce0 Sameer Pujar         2020-11-02  325  						   codecs->of_node,
66164a4da30dd29 Kuninori Morimoto    2018-12-14  326  						   codecs->dai_name);
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  327  		if (ret < 0)
aa2e362cb6b3f5c Wen Yang             2019-07-10  328  			goto out_put_node;
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  329  
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  330  		/* check "prefix" from top node */
66164a4da30dd29 Kuninori Morimoto    2018-12-14  331  		snd_soc_of_parse_node_prefix(top, cconf, codecs->of_node,
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  332  					      "prefix");
66164a4da30dd29 Kuninori Morimoto    2018-12-14  333  		snd_soc_of_parse_node_prefix(node, cconf, codecs->of_node,
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  334  					     PREFIX "prefix");
66164a4da30dd29 Kuninori Morimoto    2018-12-14  335  		snd_soc_of_parse_node_prefix(ports, cconf, codecs->of_node,
66164a4da30dd29 Kuninori Morimoto    2018-12-14  336  					     "prefix");
66164a4da30dd29 Kuninori Morimoto    2018-12-14  337  		snd_soc_of_parse_node_prefix(port, cconf, codecs->of_node,
66164a4da30dd29 Kuninori Morimoto    2018-12-14  338  					     "prefix");
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  339  	}
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  340  
4346a745df4107d Kuninori Morimoto    2019-03-18  341  	graph_parse_convert(dev, ep, &dai_props->adata);
4346a745df4107d Kuninori Morimoto    2019-03-18  342  	graph_parse_mclk_fs(top, ep, dai_props);
4346a745df4107d Kuninori Morimoto    2019-03-18  343  
ad11e59f52d6fc7 Kuninori Morimoto    2019-03-20  344  	asoc_simple_canonicalize_platform(dai_link);
fe7ed4dec2e6289 Kuninori Morimoto    2019-01-21  345  
ad11e59f52d6fc7 Kuninori Morimoto    2019-03-20  346  	ret = asoc_simple_parse_tdm(ep, dai);
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  347  	if (ret)
aa2e362cb6b3f5c Wen Yang             2019-07-10  348  		goto out_put_node;
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  349  
ad11e59f52d6fc7 Kuninori Morimoto    2019-03-20  350  	ret = asoc_simple_parse_daifmt(dev, cpu_ep, codec_ep,
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  351  				       NULL, &dai_link->dai_fmt);
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  352  	if (ret < 0)
aa2e362cb6b3f5c Wen Yang             2019-07-10  353  		goto out_put_node;
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  354  
25612477d20b522 Pierre-Louis Bossart 2020-07-07  355  	snd_soc_dai_link_set_capabilities(dai_link);
25612477d20b522 Pierre-Louis Bossart 2020-07-07  356  
97fe6ca4146583d Kuninori Morimoto    2018-12-20  357  	dai_link->ops			= &graph_ops;
ec44b99a0aeb61e Sameer Pujar         2020-11-02  358  
ec44b99a0aeb61e Sameer Pujar         2020-11-02  359  	/* Use custom snd_soc_ops callbacks if available */
ec44b99a0aeb61e Sameer Pujar         2020-11-02  360  	if (priv->ops)
ec44b99a0aeb61e Sameer Pujar         2020-11-02  361  		dai_link->ops = priv->ops;
ec44b99a0aeb61e Sameer Pujar         2020-11-02  362  
ad934ca80108434 Kuninori Morimoto    2019-03-20  363  	dai_link->init			= asoc_simple_dai_init;
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  364  
aa2e362cb6b3f5c Wen Yang             2019-07-10  365  out_put_node:
aa2e362cb6b3f5c Wen Yang             2019-07-10  366  	of_node_put(ports);
aa2e362cb6b3f5c Wen Yang             2019-07-10  367  	of_node_put(port);
aa2e362cb6b3f5c Wen Yang             2019-07-10  368  	of_node_put(node);
aa2e362cb6b3f5c Wen Yang             2019-07-10  369  	return ret;
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  370  }
ae3cb5790906b5c Kuninori Morimoto    2018-12-14  371  

:::::: The code at line 265 was first introduced by commit
:::::: 1e4771a62fd7a6bab058529c450d3d87a8bd5b1a ASoC: audio-graph-card: add link_info

:::::: TO: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
:::::: CC: Mark Brown <broonie@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011132222.VoAsvoxF-lkp%40intel.com.

--r5Pyd7+fXNt84Ff3
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AvgBAA==

--r5Pyd7+fXNt84Ff3--
