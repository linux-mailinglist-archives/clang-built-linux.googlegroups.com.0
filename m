Return-Path: <clang-built-linux+bncBCTY52ESWIEBB7HRSGEQMGQEZDDOO6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 263493F5762
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 06:43:43 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id 184-20020a6303c10000b029023d089ffadfsf11447402pgd.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 21:43:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629780221; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZI749Vocwh5vksw+Ut3Bg9bH7gtpd87sMDXnsyTyZHC+F9vCLxVMleAHirwLYrTCbF
         aFhxR1dZPTeEL0c+D6Cnxhp3Fvss1g2RTu9WbgR1VSWLJAL0uqKr11KAc0+u4M1hgTrg
         yCR9t79YgCTC371lOZ4aKd9duwAiBYH8htyqL+5o69Gr1y1UUYVRbpmV0SoCUrn3Seu8
         TaNn8clDGL3VB+raUwsMASDns1uMtuWOhMhno8rRTBIMlDgQnyPkHFvk2dVe7jaQijJr
         h0lFH7hVRvyGDz4+lqrzAfar1fkyR24bO/ThWn+dgKf2/Mre1Q7vUkGVlbe72Y1k360l
         coXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:subject:cc:to:from:message-id:date:sender
         :dkim-signature;
        bh=4EQFcv7xBuxhXmlvxJpe327WPesQcb8exv2BVHsPyPA=;
        b=y0q83BXhDhjeBYJDhBKG0dx9KV7o6+vLWisPrdnsiAk2T2ZvIMyNJpe1AQ1gCNH3P4
         4NAGqbsn0Uh9TdS4qowGu8l3faSw05DL2MmtTm/ThvyDSJxcxcroh/zBSnNSp1mLBd1G
         ukjWyJef+u+Pu77EehWAXlTPLB1zunHvI4VgI3GnrRAk9F440DTC/mnMJEoEHGQuz2e6
         /BffBS9TdnRiGG/dvYjdhWEwXdpHiBWY24tngeFt5lvsdkkqgfVtkSjS1JQaq7czIza4
         8qfbNOdSSm8mJ06Cirn2/iKlV6br3csIw1dSl74LOD8RqeLWAyGzKT3ou+lSfZuF5YHH
         6+nw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of kuninori.morimoto.gx@renesas.com designates 210.160.252.171 as permitted sender) smtp.mailfrom=kuninori.morimoto.gx@renesas.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:message-id:from:to:cc:subject:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4EQFcv7xBuxhXmlvxJpe327WPesQcb8exv2BVHsPyPA=;
        b=NuPxBv4jsXaeHXiheMumJSXzNsBuK5zP9PS2RCkrUB67a8jjji5bpDmH+PQDXbGhbY
         36q5cKpPUQnkp3nQJq9oJq3qUvcxrANttByK/7TaiRkP452Tre6feEW9d4K1J/XAvhTS
         nB20ni3EK2GdKyJQMo9MUQUJctwE0e5urCfMy06OBGrKj7xP+1cKCS5AS1E8A/buZaOn
         qqynoqL/x6FXW7J63SN1LSIW1VnQPMtRDnYD6c0HspkpMWRFzBC8ucZ322obWodssdNm
         N/dtCPNALfEwJh0fes7OylfJkNUFjfLr9xJvIACokjtQDOHkRUa84bUAaRq/z3ndfCHU
         B1/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:from:to:cc:subject
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4EQFcv7xBuxhXmlvxJpe327WPesQcb8exv2BVHsPyPA=;
        b=bInoD4QxkqLV69Km5vpPKTdK4xcIV7XFV55ukP5+GXjrg+JNfWIzwyW6oFn922RQAz
         dvuux8NcptVqzHKqKgxCefnna8Fb4767jUayN5obwJezLjWVhA0C2cioS3fbfo/zSIbl
         ZMpJOjtzC1IQzUR4f6cxlkFOcAyNdjJTlwZp9QPBRabsVXDuCMS+ZodJkKjOIGN6FS8q
         mAaTGwntcf7BANALDRt2fYVGtVSqf6r8gHbCKF5Z8dlkChthKGycsxPWVsgP9q1DpUZj
         6hpC3l/Rf82EstODw4fYgg+C/55lg2pIFaq8lcKn/6mCKx6cP7z2EmxvvB4kTPbMh1vh
         WHRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IWFUvZyry4is1Fjh1ZKr3ita3o1VpVKTUbx64GENnWq8XFjr9
	cmITC8mR4XluozezoANuE/0=
X-Google-Smtp-Source: ABdhPJz7pf39AuOyOwPfO+aqQuDeQZX+/CbI3RX+Mmdp89G59dhFtI3HiJ15BM+E+pytvETWVr+IKQ==
X-Received: by 2002:aa7:86d6:0:b0:3e0:fc4c:6e67 with SMTP id h22-20020aa786d6000000b003e0fc4c6e67mr36740456pfo.50.1629780220762;
        Mon, 23 Aug 2021 21:43:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:75cd:: with SMTP id q196ls498510pfc.11.gmail; Mon, 23
 Aug 2021 21:43:40 -0700 (PDT)
X-Received: by 2002:a63:3244:: with SMTP id y65mr35360429pgy.210.1629780220061;
        Mon, 23 Aug 2021 21:43:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629780220; cv=none;
        d=google.com; s=arc-20160816;
        b=Cat3jZgprYhKc8TjayKKPNOFssYyUbih95szQ/y3CkAbSLiU/93tWo1np6BTACap/e
         Yu0CVmllI0JFzfNv03Ba1kvSqpmezmZ1+s2Ux4nRkIh3x29tMRXo18YOMJd3gqj0IOPP
         AX0+X0hJmvR0phQxhmoGZWN+RvmLpH446NxcPc7p41C7LzvqrLMdEWu1a9MGVeMsRUpq
         All5/heSUz0SwXoe+E3tGJh+XyYOCa5uPszvHzZgMZiA0wQ/IJKSCozJXN+TbEvuMo8A
         nblQ5uTJH6cjPVppKL5LflNJfpHqWw5+L2bUankyW5DGK7/qLfrvQuAieNxvBnH+/Vpz
         CJrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:in-reply-to:subject:cc:to:from
         :message-id:date;
        bh=H6eSrL/pzlepw84ky3gjxMmoCrRhoHl09fU8jYBaB0o=;
        b=ePpy9vf4S62l+StYhfPt5QVBs90elcVbQFTQvfPne0Jm/CCc04eCcggyYQ3W7EvxhK
         8UKbz4sXD2chC04k4PhUIFchM1M71LVPKHeK8kEMNy9nXV3c383RLyFMOK1lgWCNoccZ
         FoVMotcSzUk2/UQ5LMYP0lguyE7neDV9jhQ6Z0CpAAnsa0MlBTgwX3/JV0rOs6VW4QCv
         JUk7/j2U24pGnfp3OhBTrE+mQoybgkAuoDXJbAm4Fjw+UsfXTFt8PPyzmXibPmvSt99d
         LcNE8wT5d0t524dXjfDUxYnWBGRPVb43ch6hUNOpXY2ZH3EOYRpREFyNkcQnOvcF4+1I
         txsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of kuninori.morimoto.gx@renesas.com designates 210.160.252.171 as permitted sender) smtp.mailfrom=kuninori.morimoto.gx@renesas.com
Received: from relmlie5.idc.renesas.com (relmlor1.renesas.com. [210.160.252.171])
        by gmr-mx.google.com with ESMTP id b15si987872pfl.6.2021.08.23.21.43.39
        for <clang-built-linux@googlegroups.com>;
        Mon, 23 Aug 2021 21:43:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of kuninori.morimoto.gx@renesas.com designates 210.160.252.171 as permitted sender) client-ip=210.160.252.171;
Date: 24 Aug 2021 13:43:38 +0900
X-IronPort-AV: E=Sophos;i="5.84,346,1620658800"; 
   d="scan'208";a="91544910"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie5.idc.renesas.com with ESMTP; 24 Aug 2021 13:43:38 +0900
Received: from mercury.renesas.com (unknown [10.166.252.133])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id 3AEEE400C43B;
	Tue, 24 Aug 2021 13:43:38 +0900 (JST)
Message-ID: <87eeajmozp.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: kernel test robot <lkp@intel.com>
Cc: clang-built-linux@googlegroups.com,
	kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	Mark Brown <broonie@kernel.org>
Subject: Re: sound/soc/generic/simple-card.c:259:17: warning: Value stored to 'dev' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
In-Reply-To: <202108241108.EJSE2QL8-lkp@intel.com>
References: <202108241108.EJSE2QL8-lkp@intel.com>
User-Agent: Wanderlust/2.15.9 Emacs/26.3 Mule/6.0
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kuninori.morimoto.gx@renesas.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of kuninori.morimoto.gx@renesas.com designates
 210.160.252.171 as permitted sender) smtp.mailfrom=kuninori.morimoto.gx@renesas.com
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


Hi

> >> sound/soc/generic/simple-card.c:259:17: warning: Value stored to 'dev' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
>            struct device *dev = simple_priv_to_dev(priv);
>                           ^~~
>    sound/soc/generic/simple-card.c:259:17: note: Value stored to 'dev' during its initialization is never read
>            struct device *dev = simple_priv_to_dev(priv);
>                           ^~~
(snip)
> e59289cda8dec0 Kuninori Morimoto   2019-03-20  253  static int simple_dai_link_of(struct asoc_simple_priv *priv,
> d947cdfd4be29c Kuninori Morimoto   2018-12-20  254  			      struct device_node *np,
> d947cdfd4be29c Kuninori Morimoto   2018-12-20  255  			      struct device_node *codec,
> 17029e494edc68 Kuninori Morimoto   2018-12-20  256  			      struct link_info *li,
> d947cdfd4be29c Kuninori Morimoto   2018-12-20  257  			      bool is_top)
> 6a91a17bd7b92b Jean-Francois Moine 2014-03-20  258  {
> f531913f01a072 Kuninori Morimoto   2014-09-09 @259  	struct device *dev = simple_priv_to_dev(priv);
> 17029e494edc68 Kuninori Morimoto   2018-12-20  260  	struct snd_soc_dai_link *dai_link = simple_priv_to_link(priv, li->link);
> 5bb5ac71e3f4f8 Kuninori Morimoto   2021-04-14  261  	struct snd_soc_dai_link_component *cpus = asoc_link_to_cpu(dai_link, 0);
> 5bb5ac71e3f4f8 Kuninori Morimoto   2021-04-14  262  	struct snd_soc_dai_link_component *codecs = asoc_link_to_codec(dai_link, 0);
> 5bb5ac71e3f4f8 Kuninori Morimoto   2021-04-14  263  	struct snd_soc_dai_link_component *platforms = asoc_link_to_platform(dai_link, 0);
> 1b5721b24306c2 Kuninori Morimoto   2014-10-27  264  	struct device_node *cpu = NULL;
> d947cdfd4be29c Kuninori Morimoto   2018-12-20  265  	struct device_node *node = NULL;
> e0ae225b7e96e5 Jun Nie             2015-04-29  266  	struct device_node *plat = NULL;
> 6ad76b573bb63e Kuninori Morimoto   2021-05-11  267  	char dai_name[64];
> b3ca11ff59bc58 Jyri Sarha          2014-03-24  268  	char prop[128];
> b3ca11ff59bc58 Jyri Sarha          2014-03-24  269  	char *prefix = "";
> 25c4a9b614f101 Mark Brown          2021-04-23  270  	int ret, single_cpu = 0;
> 6a91a17bd7b92b Jean-Francois Moine 2014-03-20  271  
> d947cdfd4be29c Kuninori Morimoto   2018-12-20  272  	cpu  = np;
> d947cdfd4be29c Kuninori Morimoto   2018-12-20  273  	node = of_get_parent(np);
> 17029e494edc68 Kuninori Morimoto   2018-12-20  274  
> 17029e494edc68 Kuninori Morimoto   2018-12-20  275  	dev_dbg(dev, "link_of (%pOF)\n", node);

Ahh...,
"dev" at 259 is used only at 275 dev_dbg(dev, ...), and this
warning is for non DEBUG case.
I don't like below, but is this the only solution ?

+#ifdef DEBUG
 struct device *dev = simple_priv_to_dev(priv);
+#endif


Maybe samething happen at audio-graph-card.c :: graph_dai_link_of(), too.

Thank you for your help !!

Best regards
---
Kuninori Morimoto

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87eeajmozp.wl-kuninori.morimoto.gx%40renesas.com.
