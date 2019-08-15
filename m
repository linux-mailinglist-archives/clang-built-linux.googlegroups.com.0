Return-Path: <clang-built-linux+bncBDRZHGH43YJRB66D2TVAKGQENG2MEDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 815228E7DB
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 11:12:27 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id t9sf995809wrx.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 02:12:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565860347; cv=pass;
        d=google.com; s=arc-20160816;
        b=lmgpDJ6TMM4P2CwXRVkSv2o8fphNYa/eENIXBfSqfzqmnogAyf11yayeUEtGa2x461
         pMHcTzKFszVrB555Rg2VtRjuCrdxYPDLrhrKdL4n3pBIHwW9WItuya8OHECvyzJMWC16
         EM1Kn8+kssesMFlhquKPBGZysfpuHDm2vu2+I5BAWSqYbrFZ5UZPbpo9UHylXbmNTETs
         /3Kqo5JGHxTit3Mw95VKX+0uKk414PDWFd/OCACqDKZjmtewsMNMoZsAEmC/Lo3xG8U2
         MV46uJZR8HAZlsLAJOuOqJ7YWXqSlAb4CYkoXfJ0h8R2Xgp+BQ9HvwhHuhK3bwKzlRxY
         B1Cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ZY0gWGWkMahqrG0Z9GDvExqvoUSaVKql1antbEvkEBQ=;
        b=Z8YpnDKVrjJ27quNrA/5puv9y5dd311eu2jQ8wweL0VMxbYm2Cte8IjcJDAXmVQssr
         2wkvfBwVXFQLV7kIijMpX0l71OSwL0pnfqeG5C3LhBNleDiasLHWBQ/kBqfm+PmDsJOP
         7xDd696oV4DLBtrjTaV8SKb1WTlq6hKp8T2n0UdzlSVbrGSIAKz2trIxBz7tzClya0+7
         0KJT5aPixbDUHmYHFUX3i0KnGjgZpx/DqSKKCXVFuyDSY20QaaKuD7XPNXosWvmRHNJi
         IkJXewtOGnSxf6E7VzxXwRc431InRr3gdJQR1ErmfpcbOP1ggrfVnpuuWRxTr6ZDGyDW
         Esdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QElReFqQ;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZY0gWGWkMahqrG0Z9GDvExqvoUSaVKql1antbEvkEBQ=;
        b=lgitvnmFXb7SPFPbT1uHL+g2nH8MlyXykmkXjjvm35113dKCRK5F7JsT03y2uK6Vny
         i23ZpYjcVQQoznIMxd9sXxyZEQa+kHuQAHQTQmMhVFkWRzhv1wZMpyK/6DKb2DzpZlFd
         HvH7ds4Et2LvPmfi/10bFkWRuX8/wcd1bg1uqT5QgTcq8t2emsy6bnfOxhRjbEubYn9R
         s1/3HUvp5z4SvqUmgE3CXOAFBoIqedSn1cR0eJ2cj8btdRTTqg7Ptum5yJBdFaMRWNYd
         m6IWfe2Sog3xEdOqHqdQC5fTvAgouaLzwYgjIH6+EF8NvQHPR7dunNViOQcrtowH5ZMU
         rGLA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZY0gWGWkMahqrG0Z9GDvExqvoUSaVKql1antbEvkEBQ=;
        b=SjRi1mt4e0YXuxzDH/I7xHEW7TeZr56Tdl+5zRbF/FvKu4FMlDgpHzXDeusOKeVaZa
         yQ3lupapSo/pexf1VnEVmzomfVKfGqCYQii2a6DTWaa5ITjuEaUgO30Wmjrblyp8qFLZ
         BI+L6g8429+dMMUc2gm8X8wf6/JDqKIG9cjUYEbRekUri0uaUTuPiMqAeFmA4Qq52Rif
         +d4B1kNIoikdyJ3agh45Mz523a13ih4GGhl7LrKc2l8altEo9RO73jLL3Phfgxle9//3
         V2RkU+F/AnIM1L+74A2C/d6wnqEqa5mvEyPCYh7LyMQrzHUgeQ2rVQY7saEtUOwfT55E
         qQ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZY0gWGWkMahqrG0Z9GDvExqvoUSaVKql1antbEvkEBQ=;
        b=rZamusEoiRQQed55rC17tNF7vnTbYrOH3OwfEU0FdjIRviMkApCig5+rt3G73ll7Xt
         Ew+/hmfUbw+sFowsoUNihYz21+FqArBUPfyhJGQbOBk4bTawwCsFOOERWf2xuAZyh1eN
         eQz2B/j1/ta/tbwqcDBvqEWq8PqhmvwMIH4BXKY3m9e8GSmPsAJqQpfAMfBp5GjEZ/ig
         IC1BXyUNcglTyA+j38MxPOsZN9h6XCJupnAhkBg+S/0/oV/MMphJvYkTYHOWtanCoVSv
         6MyFYMvDpK/lLGpNKzIFr0BXqM0xVqWC+xpU8ZGrlh2Azc4KRHg+s3tvvMnBXsjHjV4O
         Gj3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUnuYXz9+vFQxKYqQCHkdhrMcbCl4KublRTVSca9ludqBwE7uEK
	hgLmtMgwplcAu6wpygn5F/g=
X-Google-Smtp-Source: APXvYqyKpsScB0nYRzaj12d046WC7G0sF74cnH35DbuRZYwW1Z/UgkqyhHVfQd48pDNeFh39FPJXWA==
X-Received: by 2002:a1c:7014:: with SMTP id l20mr1764344wmc.45.1565860347198;
        Thu, 15 Aug 2019 02:12:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c411:: with SMTP id k17ls314292wmi.1.gmail; Thu, 15 Aug
 2019 02:12:26 -0700 (PDT)
X-Received: by 2002:a1c:64c5:: with SMTP id y188mr1798510wmb.154.1565860346621;
        Thu, 15 Aug 2019 02:12:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565860346; cv=none;
        d=google.com; s=arc-20160816;
        b=iPrt8XV8xf2Im8dWlNaxC8V0Blxt2dBcgwXeOC/KCF+UMrBTWEOgh3S/2ysss20i6Q
         7yi2z5dOD6rrWxkC06Zklsu13BhS4uPJTud7MHWMr9SJACvFsuBB4CNzEZO3GsSAR1TA
         LIzqslhbhhGJjnJYV2M66OhYHrmsYmVHosJwA1qR6tDHyyNM+hOA3yR3Wr6uVzAGx9O6
         e9Kiigh1GOn/BzmsInkkPjoZDzdQJiDSVhHm3jGMYTT8SaM8Mfrh40QYBxFey1JKEXJB
         7U/4WGsqlHMkUlR2Pp0Amelm+Rj836aH61ki4SJnmEIY+muDoOsVGLfOaDxad9CZ2RHX
         T4Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/iZpzZ2apqtPNAYN3rBQkZr4GG5AMuxH/SW/Plc3ffA=;
        b=L5GIqMQ1W4kgioJZteNsm1qo59LA28Y7BS+DhLEOdoHKWqD9yLWgHD0COxpSpXHmfa
         z9SWC0zS0kS5xMfC/ybBgPyxPpiWnRSB4l7qmIHbv0+/kR9eeVyScvM47RltgjENWjIR
         o3bQ+eKlHl491t7iTSiiEy5HJorkV8j83w4DXVILSw/vIplles4r2+RojgoQv00KY9Z6
         nlQaVnPT+bCZLrErZ2eToq2KK+/Kw2SfqCcUZIDU0rvdLtU3K8y0eTZw5YWPdnw0SVGC
         RH3xPT8o6hmBV+tJt5POfxTy/XGaYwTVODEsrqiKBa45TesX54e52bMlHF+rpAqri6t5
         chow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QElReFqQ;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id w17si34913wmk.1.2019.08.15.02.12.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2019 02:12:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id f9so1609529ljc.13
        for <clang-built-linux@googlegroups.com>; Thu, 15 Aug 2019 02:12:26 -0700 (PDT)
X-Received: by 2002:a05:651c:ca:: with SMTP id 10mr2132619ljr.144.1565860346166;
 Thu, 15 Aug 2019 02:12:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-12-ndesaulniers@google.com> <20190813082744.xmzmm4j675rqiz47@willie-the-truck>
 <CANiq72mAfJ23PyWzZAELgbKQDCX2nvY0z+dmOMe14qz=wa6eFg@mail.gmail.com>
 <20190813170829.c3lryb6va3eopxd7@willie-the-truck> <CAKwvOdk4hca8WzWzhcPEvxXnJVLbXGnhBdDZbeL_W_H91Ttjqw@mail.gmail.com>
 <CANiq72mGoGpx7EAVUPcGuhVkLit8sB3bR-k1XBDyeM8HBUaDZw@mail.gmail.com>
In-Reply-To: <CANiq72mGoGpx7EAVUPcGuhVkLit8sB3bR-k1XBDyeM8HBUaDZw@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 15 Aug 2019 11:12:15 +0200
Message-ID: <CANiq72nUyT-q3A9mTrYzPZ+J9Ya7Lns5MyTK7W7-7yXgFWc2xA@mail.gmail.com>
Subject: Re: [PATCH 12/16] arm64: prefer __section from compiler_attributes.h
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Josh Poimboeuf <jpoimboe@redhat.com>, Yonghong Song <yhs@fb.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Andrey Konovalov <andreyknvl@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Enrico Weigelt <info@metux.net>, Suzuki K Poulose <suzuki.poulose@arm.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>, 
	Shaokun Zhang <zhangshaokun@hisilicon.com>, Alexios Zavras <alexios.zavras@intel.com>, 
	Allison Randal <allison@lohutok.net>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, Network Development <netdev@vger.kernel.org>, 
	bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QElReFqQ;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Aug 15, 2019 at 11:08 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Thu, Aug 15, 2019 at 12:20 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > This lone patch of the series is just cosmetic, but patch 14/16 fixes
> > a real boot issue:
> > https://github.com/ClangBuiltLinux/linux/issues/619
> > Miguel, I'd like to get that one landed ASAP; the rest are just for consistency.
>
> Ah, interesting. It would be best to have sent that one independently
> to the others, plus adding a commit message mentioning this in
> particular. Let's talk about that in the thread.

Btw, I guess that is the Oops you were mentioning in the cover letter?

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nUyT-q3A9mTrYzPZ%2BJ9Ya7Lns5MyTK7W7-7yXgFWc2xA%40mail.gmail.com.
