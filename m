Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBP55QTVQKGQEZXDWL6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA069BD41
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Aug 2019 13:25:52 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id c22sf14927514ioi.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 24 Aug 2019 04:25:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566645951; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ve+TQwKL4y7I1DE4DzwMIvPPEVRN26TfkcT2rL0BIPxjG4annszzwj6Dp4wmt8E81Y
         mFovdbNBVShqUFIwKXXu5fAzJbubUcSHZ1VYxmpUYoVfqKKaK3bC95pxbO3YggDvrDZu
         cAWfoEb+xsXQwukKhzykkdDEncE7Asj1YFUgSFxWUtd4bj7+s6IriuLQgGiqRXRf5k1Y
         NDT5Ocr9JxNqO/L3d+hM+rk8YoAoC7Z34tVdYNkLcTzx9ErTDQwvx2q1rH02W8TgMLek
         Pu+5Xc2Wxur2dzKYLTAnhPHoJuX8exhFt9v+4QSTi3w+322zTwS7n+zf/J3MimgTDUW4
         KiPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=nuIXEwldocSHVtn6NmqAl3cfg85T1kbmF4biNIQbFMM=;
        b=NYKRne2Vou+ltVMATncFgFAmmfAPLdvCcB8zLdpckLxEPbjDtzJMtDlGtb9n1C8PSQ
         EFabd+xdiz3Biv4agE6yGVDV/IwbYl033WsbwMsHD+/2tj7G483VVQzq7VVnhZo5FBaV
         OyOZpn9DwAGUBrEv4OibSTI2QRJxRJRJA8764QcG9tyHDMQBvvmI+AvqH5DMlWRyJYGS
         HIaa5UoeAk1ktGZbnMaLMdkpJS2U0Tn3kNroONT1zJ0D4m6VH2QQED5q6KiBrRkxwLXT
         QYswJnBgV6l7Kd1JVjIOtJZwV5lGQJ0eW904y++/W7v9L0G87Kiif9D1JkUOzsYvMn/o
         pJWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=f2CmPfEK;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nuIXEwldocSHVtn6NmqAl3cfg85T1kbmF4biNIQbFMM=;
        b=M4Kuu1+HhEG/3w97gSmpz2CJ50dmWX//ED0GukNO+k332DY0dMBsnJolFFsR1A2BK6
         Z6frhQIORsbOS/0zsZH0IDCaPOq0A5bpzJ6M3rRGfT+BnGdUI5h92E921cT9Cc3OxOZ8
         bYlOJq1e7sjns5m6oKK0WGallHprqAiUnAcB5D5H8fFxlaHMe4g/+kQA0d7dpvv02PCx
         3znCBODWn3zt/2E6GpdVqgmy3Q55/nMNRUgBiSS9upGc/+TH/TJq49RtXlMH7/7VP70w
         S7D8ibfFom+jQqHvO/WOEwZDL82wQJKymDC/PLIa19ZJaYNW3FcXSfxerGmSUGZMycj+
         nKtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nuIXEwldocSHVtn6NmqAl3cfg85T1kbmF4biNIQbFMM=;
        b=b5cnyfM+VEWzRekaPSyrVfyuQcX0Urdp2CQ4mkuF5yhip6qtNcF2jE12lCUmfpv2TW
         61N0uwalvBDGVxO0ht1dzsKAhiZu2OBnYrfLvUpYFEzlvHrd8eVtz6hm87NXSi/Xn0PT
         ixPjERBMd0rPHFrfNydFraI8/c1oF/JwCytXp8ga/iUcbYi5ErXoSrTgoTUtFV+ppGbR
         TbfesCi8kbA7b5ZyvVra2lb3+GOlNUsCE7LKeGownqX6rkJx4E6pjb7sgW1C8j1DkhZZ
         A/ckPTETPWR+muuRsSkEgvZKixsoibjB3Zt448ccnMT2ZPmwZJKSqJa+HK01Si4Jzk11
         k9Zg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVW51DdNC40/1lKiUWN14DjXTiC67DedkV70gZThU04nPMG5e/g
	096OwD2PoCLLs8VguAvodX8=
X-Google-Smtp-Source: APXvYqw4Q8XE7604NtzbOMhub/PPvjVdjBY333OSo9YHe7mcy7PSIscdUsY6f61CT6LhXNC1CcUl6g==
X-Received: by 2002:a5e:8e08:: with SMTP id a8mr5502197ion.94.1566645951493;
        Sat, 24 Aug 2019 04:25:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6503:: with SMTP id z3ls3477218iob.8.gmail; Sat, 24 Aug
 2019 04:25:51 -0700 (PDT)
X-Received: by 2002:a6b:400f:: with SMTP id k15mr12473548ioa.153.1566645951212;
        Sat, 24 Aug 2019 04:25:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566645951; cv=none;
        d=google.com; s=arc-20160816;
        b=cKwwReX0p6N74p2KmwxhUWU4dOaCZ0jcGP8mmO1ItOJotA9YkYrvjFDaBcOrI7gaTN
         BptlgM+zkGOIEltpn1NGkoTR7XBae8k5ndVQpuq9T4A9r2QD0I5RirFLLWgFcc1rS8dh
         2tDdURNVnB+mwgIN7GifjtCsOoU7lUpKR0tFcZxN+Zn7WQXWS73mOalCZv2E412Ll/+X
         Au1iqVp8N6xwxTQffjUntFsfXdQVYOQetWIYrAqBDT985J4e3++NruVAbm8V0nfHlx05
         YHo+oacgpD9ajcFLYq0d0XZ1PD45hyraJa3nnuQmKRbO9m4tACJ+cDiJKmR37wVDS7z8
         yJzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NieKhNiN4nZFjfAhS4SCA6/P/k0yBQv0wty/2py348M=;
        b=Y00R1Z9q/QBn/E4V1dUgXtRayC7bnmr+TAwOijeZGgbOpQKpLZvTRYqZRIgJZTv+4h
         3lW1CH0viXUhFtMai2b18N6NI2+IL2eUvKl/AsQh0lJ8Cn7gZpuLWeiTLqKBY2/X9h7U
         RKMapmkemN1dPRaRTX0o5MPoa6ZKy3k/xlsFLIGVFBFYMgzQ3E0h7fEoz7645aBOXzBE
         rGCMdG2DXF3ZZSTxV41Ka8QEqjAj+rgn2hn6o2VwEQgQfgOCr0mPxd8DAtR/zyn5KsY2
         lHRz/EdsCVmm+IPH5TcFHO8s0jPy6GL55AX06H0g1b0u9Iy3wb+4pEA1VG1WeLrvk+DY
         GfLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=f2CmPfEK;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l124si329423iof.1.2019.08.24.04.25.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Aug 2019 04:25:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6FA5D206BB;
	Sat, 24 Aug 2019 11:25:46 +0000 (UTC)
Date: Sat, 24 Aug 2019 12:25:43 +0100
From: Will Deacon <will@kernel.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>, Yonghong Song <yhs@fb.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Enrico Weigelt <info@metux.net>,
	Suzuki K Poulose <suzuki.poulose@arm.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
	Shaokun Zhang <zhangshaokun@hisilicon.com>,
	Alexios Zavras <alexios.zavras@intel.com>,
	Allison Randal <allison@lohutok.net>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	Network Development <netdev@vger.kernel.org>, bpf@vger.kernel.org
Subject: Re: [PATCH 12/16] arm64: prefer __section from compiler_attributes.h
Message-ID: <20190824112542.7guulvdenm35ihs7@willie-the-truck>
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-12-ndesaulniers@google.com>
 <20190813082744.xmzmm4j675rqiz47@willie-the-truck>
 <CANiq72mAfJ23PyWzZAELgbKQDCX2nvY0z+dmOMe14qz=wa6eFg@mail.gmail.com>
 <20190813170829.c3lryb6va3eopxd7@willie-the-truck>
 <CAKwvOdk4hca8WzWzhcPEvxXnJVLbXGnhBdDZbeL_W_H91Ttjqw@mail.gmail.com>
 <CANiq72mGoGpx7EAVUPcGuhVkLit8sB3bR-k1XBDyeM8HBUaDZw@mail.gmail.com>
 <CANiq72nUyT-q3A9mTrYzPZ+J9Ya7Lns5MyTK7W7-7yXgFWc2xA@mail.gmail.com>
 <CANiq72nfn4zxAO63GEEoUjumC6Jwi5_jdcD_5Xzt1vZRgh52fg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANiq72nfn4zxAO63GEEoUjumC6Jwi5_jdcD_5Xzt1vZRgh52fg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=f2CmPfEK;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, Aug 23, 2019 at 09:35:08PM +0200, Miguel Ojeda wrote:
> On Thu, Aug 15, 2019 at 11:12 AM Miguel Ojeda
> <miguel.ojeda.sandonis@gmail.com> wrote:
> >
> > Btw, I guess that is the Oops you were mentioning in the cover letter?
> 
> Pinging about this...

Which bit are you pinging about? This patch (12/16) has been in -next for a
while and is queued in the arm64 tree for 5.4. The Oops/boot issue is
addressed in patch 14 which probably needs to be sent as a separate patch
(with a commit message) if it's targetting 5.3 and, I assume, routed via
somebody like akpm.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190824112542.7guulvdenm35ihs7%40willie-the-truck.
