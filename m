Return-Path: <clang-built-linux+bncBCM2HQW3QYHRBDNJWL6AKGQEBXVZ4OA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 315CE29194C
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Oct 2020 21:16:31 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id p63sf9510670ybc.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Oct 2020 12:16:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603048590; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jsfl4Q1Yji8BkukQYa275jm4i0shKbkVKwx1pc4fHymBQJH5lvpMYm+OaMt+jUVE0f
         8XX9YceKVfJYJxj7wuYwWBDHoxzxKDQuMd8MpXmOHcdLk2ibv29adtM4Ia0u/aRRQCvF
         6tSSCSZBP8y3Mhrcsh9KDNYJbLLM4ybaTEChwtRL+E34HYWkHMenQsp0HAfDTu49QSFy
         alRJ8OY8yyozEmEdJwvVGvI6qaA97nCI4/Mr5avplLhhqlPyDN26IsqzhGbX/DNCajyM
         FQPBeUsflhBrUH1cG6rBhxPZw2SrhtzbN1CYcTY+ZccQER6BWwwIi7q9ZEDeOXzE3Vrb
         VZOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=mhI3MJwFaCu1OveYSvH+6PP6dXkKf4uWRUMnYG1vyVs=;
        b=yspBhXGBQ5Ozra+htn0vcliGymlwQYPvGEAiYLWZ+f7Ik5we/tQcG8S0keldwRTLkZ
         5eCk4hxM6N+pNKR2UzO2kHSsOoPsYJINdM2q+ZjSlLVOM9NPZrDcEcY5Xx8p6B1yMlpj
         3YOF/qYYOUQ0ClG8F7T2D2PtFbydOhYteM8vYysljp11A6CUui2QUPs6Td+xsR67QWQB
         gaTReaBd1WYWCvdydviAxqXkUEhJPTgx32BKUPqI0A2osbvyo5IobSWm3ib4Unou7UI/
         Pcj+KbA5L70t1SUpfAiIUCHIBlbM1JOx65nVb913pGYEuRf0MILxtc23AYvS06CgLAPJ
         /fXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=iJ9Ua4Sb;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mhI3MJwFaCu1OveYSvH+6PP6dXkKf4uWRUMnYG1vyVs=;
        b=rcpDX0N96kqy8yphr5pRwY3HTTjO9110DQuWbxKFAt4/wl291TATdhNkJHwLceacdM
         wTdycLgUWOVPB9gsxQ8uvyiLVwyxccIWUiEbUzGg0ECeNCh3TAdGW3iu8RufS9ttfq+e
         7eC6U5kxd+fEH2BFK49wLzv/OepVB9qzigPwgu+QFqSWpC33mAYleoISvbRYCvfgaxWE
         MEmC+0AuHMIb2eAAtZ90NwZUMgMYM/hjvYQ+d0fpdskZlrNFpA1d9pfN/BDZxaw9WWbB
         qFscmJkJfzQ3dQEFAlTRl0beygfWB2TglJnArl8erFybzi/hwOXwKRT7QX0ZYcOUI7H8
         XlAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mhI3MJwFaCu1OveYSvH+6PP6dXkKf4uWRUMnYG1vyVs=;
        b=MuvIz/x0VnPj9BIcmDsZfAIAc1NjUPWXZYLVxd6mHS2Jm4rXafXLvdRsZ6kdyF3LGg
         KzgzA6y8yjrZAG9yHBkYieGzz1jKPLtlW2g94oytwkLUqa+aiu+L6pGaCVbtHdvFhJlN
         yN0VO6d02Tp2qHSYe8iFoXBfGW8eVLlMOycWm8Pbyo1Oo4P3BVFMoig1NANZqZT0VJ8L
         m0afKrxv0QuZ9Au0CsZPF9OH6GF6fk6ZNjDBD3pFTF9PWy5bucmF4xWcRv2QzZBdL15C
         u6NjFCPMIFMEFuLZ6AHcqITLekBMRy+HK1FMMlDkZFzKBmzFn6AKdWILs0cgalOKUqBY
         us6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532DeJZyWwRIKAQz0sP+u70uSYzlb34K9sYjjrq0RWnNG7G2WFz2
	BfAUFfpPVTS5tFs2CwaITSc=
X-Google-Smtp-Source: ABdhPJyZnaUKEK9prgLzlVfv7/0anOrjiPLmCbVHQrt1DmPERcZboxRmZ1YIvj9DcnRZmzRwS+y1eA==
X-Received: by 2002:a25:cd81:: with SMTP id d123mr16676580ybf.413.1603048590212;
        Sun, 18 Oct 2020 12:16:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:4cd:: with SMTP id u13ls4025361ybp.9.gmail; Sun, 18 Oct
 2020 12:16:29 -0700 (PDT)
X-Received: by 2002:a25:aba5:: with SMTP id v34mr18973246ybi.457.1603048589634;
        Sun, 18 Oct 2020 12:16:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603048589; cv=none;
        d=google.com; s=arc-20160816;
        b=vOY9AWX0RxSKD34imoxW3UWlRg4d+IXsDvsrN9GIUY26F7UlVuGyp2GYqlDoQ++I9i
         kOWUcOYqbOKrpiovC4LoKMmgsiK9i20YWGY3Z4DSP5vHDwatmXkauq8Exiopmovs3EBY
         RhMiinZSr3mWC+9Dx64fhXKsP4ESU2H2qOb3vJLuQeRB45hEJUHK8RdJk2hNS4+cMUQ9
         IztdcbR/iZI4f8/Uz4R3oLhXDlcbrcEFhof/i+to+NdlYahUW8hnIgrQVGoC3cYe9Lbb
         UaFBpGAzymPqivBXKaghkjuiRD1+8qA5Da+3ryi8C+mRskVAzOV+49NeTrAx0vfkWJHW
         RZfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jSZ48E7Pk5au6oJE5B/SpoPyGzHAu2LHc5e92XLrkbA=;
        b=sSKxn0Kx8nPjuCQZWz8axUlIkiRzfUVfWbFpGa4igH0rzN7nqPpaAZLgmKjKn2wU16
         QVGkxkcRiMqDhl/fE54I9JOVBQDzLKv3VuSQ7wbGEuTuodagERRPyto0Sj+w8ud6Qxyl
         Hmb7M1IagRKCfLYKGePeEDOFe3mn/RGVv8DWWVMZ87HJ5G49M6rWHQOZAqWHA+r0cVZ9
         40j338JIoTrKSuVbMZ6To3Hqb/o26tCS1c5KpM07GR14DOw6JGVFGR7EPeJCwWiuYl5f
         22DNQ2B6x/nGl4YZ3x58mY41wPAbI3nYjdvgPobHkCSgW2owNhkXo+Kk+lw42xzIWMDi
         g9rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=iJ9Ua4Sb;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id s7si608644ybk.3.2020.10.18.12.16.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 12:16:29 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUEAE-0008Qi-Sy; Sun, 18 Oct 2020 19:16:19 +0000
Date: Sun, 18 Oct 2020 20:16:18 +0100
From: Matthew Wilcox <willy@infradead.org>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: trix@redhat.com, linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org, clang-built-linux@googlegroups.com,
	linux-iio@vger.kernel.org, nouveau@lists.freedesktop.org,
	storagedev@microchip.com, dri-devel@lists.freedesktop.org,
	virtualization@lists.linux-foundation.org, keyrings@vger.kernel.org,
	linux-mtd@lists.infradead.org, ath10k@lists.infradead.org,
	MPT-FusionLinux.pdl@broadcom.com,
	linux-stm32@st-md-mailman.stormreply.com,
	usb-storage@lists.one-eyed-alien.net,
	linux-watchdog@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-samsung-soc@vger.kernel.org, linux-scsi@vger.kernel.org,
	linux-nvdimm@lists.01.org, amd-gfx@lists.freedesktop.org,
	linux-acpi@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
	industrypack-devel@lists.sourceforge.net, linux-pci@vger.kernel.org,
	spice-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
	linux-serial@vger.kernel.org, linux-nfc@lists.01.org,
	linux-pm@vger.kernel.org, linux-can@vger.kernel.org,
	linux-block@vger.kernel.org, linux-gpio@vger.kernel.org,
	xen-devel@lists.xenproject.org, linux-amlogic@lists.infradead.org,
	openipmi-developer@lists.sourceforge.net,
	platform-driver-x86@vger.kernel.org,
	linux-integrity@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
	netdev@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-security-module@vger.kernel.org, linux-crypto@vger.kernel.org,
	patches@opensource.cirrus.com, bpf@vger.kernel.org,
	ocfs2-devel@oss.oracle.com, linux-power@fi.rohmeurope.com
Subject: Re: [Ocfs2-devel] [RFC] treewide: cleanup unreachable breaks
Message-ID: <20201018191618.GO20115@casper.infradead.org>
References: <20201017160928.12698-1-trix@redhat.com>
 <20201018185943.GM20115@casper.infradead.org>
 <45efa7780c79972eae9ca9bdeb9f7edbab4f3643.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <45efa7780c79972eae9ca9bdeb9f7edbab4f3643.camel@HansenPartnership.com>
X-Original-Sender: willy@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=iJ9Ua4Sb;
       spf=pass (google.com: best guess record for domain of
 willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
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

On Sun, Oct 18, 2020 at 12:13:35PM -0700, James Bottomley wrote:
> On Sun, 2020-10-18 at 19:59 +0100, Matthew Wilcox wrote:
> > On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
> > > clang has a number of useful, new warnings see
> > > https://urldefense.com/v3/__https://clang.llvm.org/docs/DiagnosticsReference.html__;!!GqivPVa7Brio!Krxz78O3RKcB9JBMVo_F98FupVhj_jxX60ddN6tKGEbv_cnooXc1nnBmchm-e_O9ieGnyQ$ 
> > 
> > Please get your IT department to remove that stupidity.  If you
> > can't, please send email from a non-Red Hat email address.
> 
> Actually, the problem is at Oracle's end somewhere in the ocfs2 list
> ... if you could fix it, that would be great.  The usual real mailing
> lists didn't get this transformation
> 
> https://lore.kernel.org/bpf/20201017160928.12698-1-trix@redhat.com/
> 
> but the ocfs2 list archive did:
> 
> https://oss.oracle.com/pipermail/ocfs2-devel/2020-October/015330.html
> 
> I bet Oracle IT has put some spam filter on the list that mangles URLs
> this way.

*sigh*.  I'm sure there's a way.  I've raised it with someone who should
be able to fix it.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201018191618.GO20115%40casper.infradead.org.
