Return-Path: <clang-built-linux+bncBC27X66SWQMBBQVDVL6QKGQEBSRKFHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id B17C82AD72A
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 14:12:35 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id f19sf8521167pgm.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 05:12:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605013954; cv=pass;
        d=google.com; s=arc-20160816;
        b=UcpnNAAf7G/f+GblmdCE9wT+3JgGfH+HrnI9XBpZpUlGYgCZUwP9FuioyD3apcWUVK
         KdHBpnLYLEEN50ewd7ptz1Jb0vp9WBC518bbrFV02Rk16yedhpujaGtq+KoVZJpRvF/Z
         hE9LKK2Qa+VdyalSKu3b9GAMUTybg4oCDBPrOInjoSptK/OTpIdmG9mJmNnrJfezsRRn
         r9CpTqr6n1i5KTo20xNCAGZ37+Djv8lYNdFqpGw9SD2l+q0UZNlJ9r0KL/zlFRk4vKJ8
         D0XjpVX+yGkI3ULxNVD3ckFVFSabzD8dPBrAZPMrHBTvTv+QfzvTa7E+8LtPYSDtok0M
         qkOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=Te1Pih55SyKp/qCAbnYgkrIn2hNdZ405HVMqu/1C/M8=;
        b=J8x8Vig5T4omfiH7TqB3AVKBnjuqKxPTP1yjb14Ik5L9Ha5R9hKCYJDDxQgM/RTOTd
         2g/pDRx75cfkbFJJWdbvGiJTP8T8mf2CmT+RLZ0iJZ3GzfZCtxLIoLoyCGEUXG4/9vRS
         YPW860qjiMsZFlnOZ7HUkH4O0LJ7ak7wssjypLf0MtZOkxL/0I+kIyM03rxzItb1qETu
         EsYbI4v8TYKu/fTpz/EJ9i1IcWo6zZWTU8hPFn4C4AC+JaUs9069TA7EcNpkx0LW0Trd
         Ytk2nC/DbiORHMJH9yW82iVhxGSx6Nbg3dhY/r5JvaCQXoiFiZxeIZj7gNidbu8rYXR6
         vcCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Di+p8tHp;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Te1Pih55SyKp/qCAbnYgkrIn2hNdZ405HVMqu/1C/M8=;
        b=dHsSrFFuTnOR5vMhTiwe5/ZGCok4w46lSNTLMlOZIptAZFlE54wJpzTcnI0rI/RqSq
         k2OZAaYF3vfEISg2YgP4QjZJnNLsvxumipLkk0w/GagHZ5L73o9rGzTXcTzsy2s2dO54
         tjY8hBpxacOn1Kpd9qDOOr0OxerZEZ8MbXB49WFLhbw9hZb+bJBNxdoI3jgT5ipNygHN
         W5VG0/bNCDfBWpege7Q4Vc/qRvaghMIJ2E5Wf6CWNdWiv/AKddxpokI8cO0fT72bK8kY
         W2XztsMfQwIZ5zcKux/r1G0eZIXG9ugAzFeabSWTSFjSNqU+FeFkbFORmFWCcWKVe1Rb
         h5HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Te1Pih55SyKp/qCAbnYgkrIn2hNdZ405HVMqu/1C/M8=;
        b=qGmK3wvDskqc5eK3+s2ogHuXeZuAmDJlhshyvOBEPHayL+efbuFn/cSy5DL9UIqQXq
         O9Q12Dkwz+Np/JTyIJ0SQihGeFMkEtksUfNo/4IDK25xYEO330Rorjgd5DWnZDd+9oOQ
         aV3U1LaL/P5t6ML28h0t8xS8wvQwrNT0lb6EwBrTB6h1kr73MaCyjzZXwappqMjUQBJi
         wraEtvVzf1F9AAPfMVRt6FTlgQT6q2fR4lbSBTos18jKKZ8CJh6Hl4mprOpKqFmjLeSX
         OguS6mfU/RDv4kGhT4yn+9hPKCqMo3tZZPp8VSUmkhzmkE0prcBjCU0DfpBL5fNxvBIy
         gZ+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533sm+HxG0Edd11Uzm3fNyicPNLyKpio0JyVqTdGz3H6TWTSQL3U
	FQAv/EZkgrVGNKt4xlVM9Xg=
X-Google-Smtp-Source: ABdhPJwVDIbsGQCzGrAlMyeFlh7AH+abKYaswwESUrRWrPthDG8vPEseNZkXGnULWcJJ2hT3aAVSVw==
X-Received: by 2002:aa7:982e:0:b029:18b:6372:d445 with SMTP id q14-20020aa7982e0000b029018b6372d445mr869080pfl.31.1605013954432;
        Tue, 10 Nov 2020 05:12:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9b82:: with SMTP id y2ls5292466plp.5.gmail; Tue, 10
 Nov 2020 05:12:33 -0800 (PST)
X-Received: by 2002:a17:90a:2c46:: with SMTP id p6mr5141966pjm.166.1605013953914;
        Tue, 10 Nov 2020 05:12:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605013953; cv=none;
        d=google.com; s=arc-20160816;
        b=wlhHSGpGIiyFFPb71szAHKmwkIqwNXfBfzHnVoSIEwqMZ7xsndGCv4lykVsyW8Yy2V
         rdfvNxsueoUNfEHSzB0caDbsuMhDdHdN7736wkeR1hI+ZxwNyMKr6GlYmyk3bsooDhQ1
         owycxTkhLhPzk28iyM1h/RtjC1shYdX401kkpLE8h3PMD8rcMA1SS7Hfd1NaWtoDX46T
         OJ8h9oQXdXef//6M0DDNRPHCs1FSEF0n+zW4++VbCP4NWBaHs0iNqsz4lOUBSmqJBNmR
         KZzhfa9ZQtKzLGirnG7u6RAfiobqRFIUe6kr7DAVUDFflKV4bRzb0SON2kPSMdangMjs
         LJ4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=2V11rFQ3FKVTN+koXAVvig/bkOvKVZoOl9jWSSiZ8Ik=;
        b=vaXD2+Uzc7iTNb/j7f+S7HXadVSFMXCW0C+gFBMjWuJH3WZb8eXUzHbh4/FKFv78pY
         fL1Kqc0y9g1TKdeppMCGOxfJRhvvclvaggd3sC05gyNFwHUc2dq01dTzoWY9lp2jvmve
         ngYWcC1y+YnS+HKXN3rgMM/Flt2iTXBPeq0MoPiNLPog/Sag0SP8AMvgeX8SWBZoNTy+
         YuC7Oo1ETtpgto1HeqB/Ty1IYMV+SjYXjZX2nV5qsW7Gaiqg/wTmjm+VUOolk3dlkya6
         1a3GfY4n8qdIN0Q1o5aX5TsLBPxe8xnDLouzyC3p/2CFLvpfaTmv6pQNPn5vXrjVRpOz
         Rdlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Di+p8tHp;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id g4si218844pju.0.2020.11.10.05.12.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Nov 2020 05:12:33 -0800 (PST)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-435-a8Y2_VJLMHad23nddSLTyg-1; Tue, 10 Nov 2020 08:12:31 -0500
X-MC-Unique: a8Y2_VJLMHad23nddSLTyg-1
Received: by mail-qv1-f71.google.com with SMTP id ca17so4616652qvb.1
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 05:12:30 -0800 (PST)
X-Received: by 2002:ac8:3621:: with SMTP id m30mr8787083qtb.168.1605013950426;
        Tue, 10 Nov 2020 05:12:30 -0800 (PST)
X-Received: by 2002:ac8:3621:: with SMTP id m30mr8787064qtb.168.1605013950178;
        Tue, 10 Nov 2020 05:12:30 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id e8sm7658678qti.28.2020.11.10.05.12.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 05:12:29 -0800 (PST)
Subject: Re: Subject: [RFC] clang tooling cleanups
To: Joe Perches <joe@perches.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, cocci <cocci@systeme.lip6.fr>
Cc: linux-pm@vger.kernel.org, linux-crypto@vger.kernel.org,
 qat-linux@intel.com, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-iio@vger.kernel.org,
 linux-rdma@vger.kernel.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-rtc@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, linux-samsung-soc@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-nfs@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, alsa-devel@alsa-project.org,
 linux-rpi-kernel@lists.infradead.org, linux-tegra@vger.kernel.org
References: <20201027164255.1573301-1-trix@redhat.com>
 <3c39c363690d0b46069afddc3ad09213011e5cd4.camel@perches.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <cc512954-2e1d-a165-f1f1-2c489fd6d3a9@redhat.com>
Date: Tue, 10 Nov 2020 05:12:26 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <3c39c363690d0b46069afddc3ad09213011e5cd4.camel@perches.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Di+p8tHp;
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


On 11/9/20 6:52 PM, Joe Perches wrote:
> On Tue, 2020-10-27 at 09:42 -0700, trix@redhat.com wrote:
>> This rfc will describe
>> An upcoming treewide cleanup.
>> How clang tooling was used to programatically do the clean up.
>> Solicit opinions on how to generally use clang tooling.
>>
>> The clang warning -Wextra-semi-stmt produces about 10k warnings.
>> Reviewing these, a subset of semicolon after a switch looks safe to
>> fix all the time.  An example problem
>>
>> void foo(int a) {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0switch(a) {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0	       case 1:
>> 	       ...
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}; <--- extra semicolon
>> }
>>
>> Treewide, there are about 100 problems in 50 files for x86_64 allyesconf=
ig.
>> These fixes will be the upcoming cleanup.
> coccinelle already does some of these.
>
> For instance: scripts/coccinelle/misc/semicolon.cocci
>
> Perhaps some tool coordination can be done here as
> coccinelle/checkpatch/clang/Lindent call all be used
> to do some facet or another of these cleanup issues.

Thanks for pointing this out.

I will take a look at it.

Tom

>
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/cc512954-2e1d-a165-f1f1-2c489fd6d3a9%40redhat.com.
