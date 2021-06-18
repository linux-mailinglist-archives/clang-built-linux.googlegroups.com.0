Return-Path: <clang-built-linux+bncBDBOHT7QWQORBUNUWSDAMGQECO36R2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E803AD4DF
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 00:12:34 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id m133-20020a37a38b0000b02903adaf1dd081sf6852532qke.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 15:12:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624054353; cv=pass;
        d=google.com; s=arc-20160816;
        b=bBZJDFkyld+JwzYMui3hnT93f7LVte4W8a5QdKqQV+sglQ2IOMrJqIJki4E6eLSHKz
         pXMGOd/scjygM+qCqQrolMSBk+yFLFHBDxwKuixPljOM8iohKRN5g9igUClXZj6XhGB1
         qwFi97N4UWtuwc1DH5aRx/9ZzJ4EKCowVrr9WPcUEtLTEa380+Y90w4jUDH7b/fGJm2R
         y5pOEO3+DSGO0wbjeghRRlPNt8FS8zfUn/tGfrX1skPu6ZpWJWcy7ijfQIo86qxq0Uzv
         Uf9h1PT233TvjQvd+3VNw+nFUZY7kueHSVr8jZhGTCZefwk56PPdupGnjN1gZ83ftCRe
         nBkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=z65NZ8YC4Bv/OVtKnA9Hk+ZCO+sf/COjyKXSrXkJh0k=;
        b=cva6GcsQlJQVIJWs+2WB7ST17/wHpaLoyyAFK3hIGZdhF7cmncH0uiALCw7qng3Ckb
         rxDFovJRuEIuEVz03LdDd8DlJ6vGFnsrxQoJ6+8bTXpCwN/hhDNtRswiWChbUhyeBQgY
         p5KYWxKxbI8QIGNNaEetMtM3dpqvaQm6icwEUEJtrZYtdWfWNaoObhFxfPQOxjLurDua
         yXVxsI5M+mxFisXqmJEmRmTG8aQ62c0SjDw+lKXU4Pu4HQxV7T1w6jSXY6nmT2gQKter
         kcGcGcaN5und7tr5Rq7oztIg859vq/3U3QQoB6czp7TMEWsB1OgluVOhabKs/QUATBBu
         W5LA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of moritz.fischer.private@gmail.com designates 209.85.215.174 as permitted sender) smtp.mailfrom=moritz.fischer.private@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z65NZ8YC4Bv/OVtKnA9Hk+ZCO+sf/COjyKXSrXkJh0k=;
        b=gOW70L4X54tWWkrbtdjpAMvCK2QGpdrVwgT2DhECymx/eZnQ6Sl+fhhkOl9baDt8Du
         VQOJ8BBId1xtLJ4EDHOusLFvbvM0PBnHBjAMjGVu0CV6dnWuepTtdDTdgrLwpndI3yrs
         1f6QZnwO0YgHPoAmHgiWjClvxFgla31EgI0L0xHQbZ2cSZXd3IpzU44MwcH/qeTfBtyQ
         EBykn8KyKy8bS4QQ1JXLL4QbF6sAz8YWhYYvQ+f5Usi7IfieyzfsxUPyGaovhruZRA2m
         xBU3B9Rb8e3TcNWVaFkzTzOTH/NJCRpWyPwteBurB4bdUGQdKReAOYpNi3M2KdH9Ab35
         Xe4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z65NZ8YC4Bv/OVtKnA9Hk+ZCO+sf/COjyKXSrXkJh0k=;
        b=Q+G2yg5tj2nUKfsn30LjpVsykS1DmkGrJ8/s6dh+clUVWtSkUG0uo1mKE9aIg66agt
         wiXJX9Uf9HJKGQvf73ox5RY/bOzbkSRCLDS2E+NxFb3Xd7+F4Y1h+wSBaygtPKE2VI3s
         nZlyFBUX0y934srRX8qkYcKHMbhgp3KLQngXJ7Hkp2uC2PAgUTFeacKXJmtJsMHnL8iu
         EK8HWZP0laqyo30Fq2MSYjvScTnJQD8HtoX1XILvNT84nTOkX2L5AqLlvGhjkcqT56xU
         4hUnhmXZulWnl4UlT5VRHHZmN9VdYQFjptfpHoGluxOhHEI9QhDGTOupdH+et2uYNZr0
         OKAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533K+rA0FSZ8Di2yO46jmZGYeRCaPJwFlUK62c4saCkgnGz+oBan
	MCvn1+mRqc1/Y772rIMu8S4=
X-Google-Smtp-Source: ABdhPJxH2IZYx32o6nsqsrlCeeTAUcayhBGAcDeLm5WC/2vUnJV9mctsir2iJfI86YMhRtfO5rvf0w==
X-Received: by 2002:a25:3f44:: with SMTP id m65mr16106126yba.254.1624054353462;
        Fri, 18 Jun 2021 15:12:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d257:: with SMTP id j84ls5849862ybg.5.gmail; Fri, 18 Jun
 2021 15:12:33 -0700 (PDT)
X-Received: by 2002:a25:688c:: with SMTP id d134mr7499930ybc.523.1624054352982;
        Fri, 18 Jun 2021 15:12:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624054352; cv=none;
        d=google.com; s=arc-20160816;
        b=cKRF5MZvWenMyqJvFEmcK1ijAVx54s9yS62/PgzRh7hpsc2jhyDoYy/M10fOY98SKh
         eXbFIld45lwLIlKXcrLtkbqWAiKkyZKmLMi72/jtiavop40FsUBeRDtzrkoU8n+/RyeP
         VJbIPF7wbFcqYirrGF8JKhOYlGo5TKMkjVBAw4LkBv+AY8eejtT2QGzvqLxL1crGobhi
         5NC4pNIoPRahMtWMujpT2WM54QNYadeU3rpzhh/4VVqiFCmdzsGCD0tu9IpuUphRsvuD
         I6S5uijdQ3gt0jcVfppcIma/7ow2UI46aph7HZt4oUNRwez8QFPKlyk4AQM5JnI9aSTZ
         Og2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=7U5IkQb1lK8YDIRPemhVtg8QohOVQXN/5SCT7CvOoVk=;
        b=CjFzIc8xP704VWDgMf2zIEoHaiAk9/LW2Rdi6rqlFNGC0nL61j+LVGvpkkQdnxjn1D
         GtYbkth9iVzYp9b3vyyX5GMLB4niKmvDyqDT2wCEQf3TlbNp0/LpuZ6ax8Csdfz6AV2p
         s4uaTxO1MlK7qoYsifAtLIS/iaL1xATFzElYDaYepUDM4E9PlSSCjG5ICCrNHnvMlEzf
         gweh7d84kjdICencSSWUWaldZPGiF6vnUTf7IizZlyqAkdfQ4oE3G4b7SO4qK9Fi0Xdy
         csiqgHxpeEwtOfw54MIs00a71u/+AZIwl6YFXw3RVHn0Nx5ouGjV4ogCfJg0goNtMpjO
         aM+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of moritz.fischer.private@gmail.com designates 209.85.215.174 as permitted sender) smtp.mailfrom=moritz.fischer.private@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com. [209.85.215.174])
        by gmr-mx.google.com with ESMTPS id e184si332801ybf.0.2021.06.18.15.12.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 15:12:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of moritz.fischer.private@gmail.com designates 209.85.215.174 as permitted sender) client-ip=209.85.215.174;
Received: by mail-pg1-f174.google.com with SMTP id m2so8966723pgk.7
        for <clang-built-linux@googlegroups.com>; Fri, 18 Jun 2021 15:12:32 -0700 (PDT)
X-Received: by 2002:aa7:8090:0:b029:300:18db:4e11 with SMTP id v16-20020aa780900000b029030018db4e11mr5207753pff.22.1624054352257;
        Fri, 18 Jun 2021 15:12:32 -0700 (PDT)
Received: from localhost ([2601:647:5b00:1161:a4cc:eef9:fbc0:2781])
        by smtp.gmail.com with ESMTPSA id w14sm5373670pjb.3.2021.06.18.15.12.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jun 2021 15:12:31 -0700 (PDT)
Date: Fri, 18 Jun 2021 15:12:30 -0700
From: Moritz Fischer <mdf@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: kernel test robot <lkp@intel.com>, Tom Rix <trix@redhat.com>,
	Moritz Fischer <mdf@kernel.org>, hao.wu@intel.com,
	Michal Simek <michal.simek@xilinx.com>,
	gregkh <gregkh@linuxfoundation.org>, nava.manne@xilinx.com,
	Dinh Nguyen <dinguyen@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
	Xu Yilun <yilun.xu@intel.com>, fpacheco@redhat.com,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2 4/4] fpga: lattice: reorganize to subdir layout
Message-ID: <YM0aTuGVtP7yj+cx@epycbox.lan>
References: <20210609142208.3085451-6-trix@redhat.com>
 <202106182017.Xg2OCNbw-lkp@intel.com>
 <CAK8P3a1RAYBq_qv2mr_pPmVG8siwXF-GZrGOR90_CSBqMUEizQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a1RAYBq_qv2mr_pPmVG8siwXF-GZrGOR90_CSBqMUEizQ@mail.gmail.com>
X-Original-Sender: mdf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of moritz.fischer.private@gmail.com designates
 209.85.215.174 as permitted sender) smtp.mailfrom=moritz.fischer.private@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Jun 18, 2021 at 02:27:29PM +0200, Arnd Bergmann wrote:
> On Fri, Jun 18, 2021 at 2:25 PM kernel test robot <lkp@intel.com> wrote:
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/fpga/lattice/machxo2-spi.c:377:34: warning: unused variable 'of_match' [-Wunused-const-variable]
> >    static const struct of_device_id of_match[] = {
> >                                     ^
> >    1 warning generated.
> 
> This is almost always the result of an 'of_match_ptr()' that should be
> removed, I have not
> checked this instance.
> 
>        Arnd

I think the of_device id is missing a #CONFIG_OF

@@ -374,11 +374,13 @@ static int machxo2_spi_probe(struct spi_device *spi)
        return devm_fpga_mgr_register(dev, mgr);
 }

+#ifdef CONFIG_OF
 static const struct of_device_id of_match[] = {
        { .compatible = "lattice,machxo2-slave-spi", },
        {}
 };
 MODULE_DEVICE_TABLE(of, of_match);
+#endif

- Moritz

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YM0aTuGVtP7yj%2Bcx%40epycbox.lan.
