Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTNOYSEQMGQEX3KZC4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 999333FF336
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Sep 2021 20:26:22 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id c16-20020a2e89d0000000b001d018ef42aasf1160825ljk.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Sep 2021 11:26:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630607182; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ol8JCgkpYMFSIh8pvqjV/c6hxLtWe3qOGDgnZikvAGrGonnOCtcsBZTziwya4onBED
         UORzVc9FX92QpRBtU+wjUbtJ3awxvybAAG2GgWFHd/I4AvBKtdNaH37tNDHghJr46vPY
         KybNUiGmzf78RJtGIQQg10UqZ1NUX0+b+yRRMMwDceX7N1yHUp7m2huS+76j4x2rH59C
         CMMOZP37JxmMChWnEqmWRYZ59K+NO+8n3+O4Mu5wSCUey1yigCSMfy2ImhbVIC6UwXmb
         WVScJYQqJQ+JfftQyBtep1kjFvxpSl76VoOFP7F/gE62Ri/ykPf5Y2qX6pYFpv4yg2mu
         E6tQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/SR09XeNH6N2xxKPeOl568e2R5hroxBAoCk/TkqzEMw=;
        b=hLvB1ntwwWBKEA46nszeOC4J0/Z25nZkZ0Akw3yUUsYU2xH+R2yuqMfBLRYcHpI+TG
         YzyucEx3+is7/3VZBds8DxYeB/vXwbOyBRVPGSEnCu1xpmdR85U5UWLhjpmGh6Ycnah7
         +l65uFnAeQkm17S485OOz09am4CdbD7eM8wF4T3AlmoXPAmY8NVDn5bEfe5n1vNM5ga/
         OPAi8WX6M0yj3Qxkd9E3Ub4VMatViJAmEh98eyMX6Ag7vXD01Ho7xd4i8i0DGJUM02N0
         2q4BfrtQXYQfh2siVJAB57TPklAdkojvNrfAXEXxp6PQvll/S+NLC5RowoxnqZowWurM
         Pn9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZD0Gazsy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/SR09XeNH6N2xxKPeOl568e2R5hroxBAoCk/TkqzEMw=;
        b=GxDQvb+aKd0qmqiUvzR+qNm4cX2kXpj8eNqUf17C6k29+EQS3HSNuvw6KbJsqxD4Br
         lqCyoBAxaQOFmvYOXm/d6NRgzokqRtWWc6EOxwyj41ClOyO+/t7faw+NUml14e54UT49
         QSpW+KeDKL4+ABgdWtZXeBEknqrlW0D7qryfYKR+31G0SKw4NK4owIejnlya0gNQ8gDU
         1lI02CdwsTFF95PJjefoyg/DFyHLftApoi+s9HbsKE2RNc7PdxglyOv3qz4CeoM8uoPU
         7/+nWFPOO/xnSA8F0NuB/TsK6MHxuK6G9euVRa4KIYbC/bgLEC4vEgL0x25cTrMx9oXC
         R77w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/SR09XeNH6N2xxKPeOl568e2R5hroxBAoCk/TkqzEMw=;
        b=JMx09Q3QbAun6RjZksnksKQkrx6yZKNdDmlVGSzXA32skH0PfCwhfjKZYLL6Sozhqn
         2zgW4HyfeuKfok8IVd+COVZ05lcJRfGjSo628Ju9U/CoWi3ui/5IpK2yvWixMhOpSq1U
         IBYvfftHlOEpkZ9BeJ1ZCxQefjUMpecRDllMIGx/kMcpWiSBBryVlg7W6FPJEmRSqjAQ
         a32BIJf6gwYRqG0Q8W0jn/VOvT1yr/DRV82SgmTqrQmP3rLPpgMPx+mYn85NHWgo4RsW
         umOfaz4bqxWCMhZSWpfcDDxwpD4Dem5JgZ+BuztevYr3N4eL8jmwhj79TL7mPw4bsKSQ
         GJvA==
X-Gm-Message-State: AOAM533mjlundsD0Ylg5O9dZiG+/l3jAxuxEfQN2ilxfHPmx6l8ioFCY
	ZSZcZ84ev0DUeFHR8cygoVM=
X-Google-Smtp-Source: ABdhPJy+cTRcXcwsxMhqZgfeX50L8OKusKXVKAg2bTjWyuYgptqFzXqrFpQe/lNhALJKivuptwu0CA==
X-Received: by 2002:a2e:b5a7:: with SMTP id f7mr3787300ljn.19.1630607182151;
        Thu, 02 Sep 2021 11:26:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:4016:: with SMTP id br22ls1045211lfb.0.gmail; Thu,
 02 Sep 2021 11:26:21 -0700 (PDT)
X-Received: by 2002:a05:6512:3e2a:: with SMTP id i42mr1584405lfv.45.1630607181143;
        Thu, 02 Sep 2021 11:26:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630607181; cv=none;
        d=google.com; s=arc-20160816;
        b=raykQkwFgGiRNfR27wiBicfUpY4RdcLRNy39qz+DWDrJ4jqBdV/hLNBvSqTNI58TKY
         Z0vy/S8N/JqdgxNd3VpmPYHq+WzEvjhgJOT9J3GBlkZ/9bIHsqJQjWgsUCdfn7NCOWWu
         w3hn2jmfa8EcSfHUoUHAOIiBigXBD+5iRVRQKNV+AVmNAy/LCxg5gIKPkpa2O3p4UQ4l
         mzjo0JsfnTlZ0pZpv0v6uEW9uQhjJncV/cgAogmuTSObfcQGnch20yeBZ2auQt6ZwnH5
         U0K7dMbF0KoNP4G08a1JRu32IJ71ruu1g2zrvO8KLvO0ZCsu2iq+uq+LS6F/ni+i40K4
         N3zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9bAI7/az5oT+9KLtJNJ6ONhWWEIRpA4hVYuz5o04UH4=;
        b=xkyz0z4kzw+Cv6pEaZVA5vnQcBSTfFVEgJWnpOKqGp7MXw2oa3bEwM9+I+STYvPc2C
         pML8os8BPm8SdoN80g/YudCJkFDQPu24GtcyGR3bIsqGqdVVF9mjBw+7NAhYOhdcbfSD
         p/SpiTJ//Bzy2tPfJ/6gdfSrh7gjW1t1va1T9ws/Z4KXh1PNGBL6Dhgis6eXYWo4eizI
         J9/cXFxyCxAtnS3IwxVZsZAZka5Hp5jIeihjuvFd82UQnEnugZsN6DLoJmgqnzLgQxC+
         nPzgimZccYCTxpDYQml9fb0VjponvzK/U0WcSHKjxhaFDa73JoXtD2xXw5m5IcbTroiN
         mmhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZD0Gazsy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id g2si124547lfr.3.2021.09.02.11.26.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Sep 2021 11:26:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id k13so6357452lfv.2
        for <clang-built-linux@googlegroups.com>; Thu, 02 Sep 2021 11:26:21 -0700 (PDT)
X-Received: by 2002:a05:6512:2296:: with SMTP id f22mr3517156lfu.547.1630607180568;
 Thu, 02 Sep 2021 11:26:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210802202326.1817503-1-ndesaulniers@google.com>
 <1847b77a-093a-ce59-5c3b-1a21d3bb66c7@kernel.org> <CAKwvOd=F_OexmHctcW6x7d6up8+zOb5-iLWU9-Ji1dv9-S3F+A@mail.gmail.com>
 <CANiq72mGnjy50kd4gMrOsWwmnM3YFp01qO5JzSyZyPGwCL0CwA@mail.gmail.com>
In-Reply-To: <CANiq72mGnjy50kd4gMrOsWwmnM3YFp01qO5JzSyZyPGwCL0CwA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 2 Sep 2021 11:26:09 -0700
Message-ID: <CAKwvOd=e1jrzsW=-KFBdw2f3Q-ewZhRJ=rRCgYhDwJCrQo0efw@mail.gmail.com>
Subject: Re: [PATCH v2] compiler_attributes.h: move __compiletime_{error|warning}
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	Marco Elver <elver@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Will Deacon <will@kernel.org>, Sami Tolvanen <samitolvanen@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	Ard Biesheuvel <ardb@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Tom Stellard <tstellar@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZD0Gazsy;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Aug 4, 2021 at 10:49 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Wed, Aug 4, 2021 at 7:44 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > Ah, I forgot the release/13.x branch was cut before I sent this.  I'd
> > rather this feature "ride the trains" so that it gets more soak time.
> >
> > Miguel, would you like a v3 updating the comment above (and the
> > comment below) to s/13.0/14.0/g, or can you simply fold that change
> > into this one when applying it?
>
> I can do the replacements on my side, no worries!

Bump, this has landed in llvm 14 (so needs a fixup when applying locally).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3De1jrzsW%3D-KFBdw2f3Q-ewZhRJ%3DrRCgYhDwJCrQo0efw%40mail.gmail.com.
