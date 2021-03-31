Return-Path: <clang-built-linux+bncBCAIHYNQQ4IRB65MSOBQMGQE55INMWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6973507C9
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 22:07:24 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id d74sf2009163pga.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 13:07:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617221243; cv=pass;
        d=google.com; s=arc-20160816;
        b=SQ9JdL9AX908viG3NG8byy75t2q07VkhMVnTavBazJwjageXZG05+5o8hUhFV33TEY
         i2Z8w9XEjmszfCjiJg4voIchFwJtiOMNEpJGDePSd8/VbJQOSrGYkFfnm/7nerHDAesf
         n1IjkfQQXnTdvm16motXhWJZdIMHwdIKGUJi9JQLRLtlHZyAKwqQyBRwVuqaQXsM7KfV
         /tSbCoOHuuMBwR1EfvGAXJMHBAcT3PUdra1//tRrebx/KVbp623ubE5yArHRpd0imAWv
         CDTZls5wA2cv1cE0Kn6UWGvo0Wn+EEXKq9Kr4tUhSxhZ4ocNYSEQv7OpUdKZ3jrbFOQ4
         2Vyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=kjELRSKe3oCrytXInmER03ck238Q289x3tmP7OreFdg=;
        b=hS9MSvKMmgp24IPV23lULZ5QjY9f+YnPh79l8UdQIlMc7RvuBFe6Z1KGsFV0K1tV4E
         44Hv3IPz1PvYL+ny0S3ZWKLVd9ldXQVkb0vuMAPoMysTn1aFPptSqstBWF/TNccozrlo
         5Tnf19u8jFjezmH2vwDAO1CzX0ATPvUnJC1WhYrTSrNlFbXPdIuEayrP4i+3gx2UZBAl
         eVdupNcnHwoylMFAw4pB8gEvkqyDfFXfH4Tb1rtlkMPYqU0YRRshWrs7gt5I4VPNJ44m
         RbMVzY7xBOJbj1tJWqK1NPOSrRGRLPGkIwZSg9rGIOfXw5AiZppnV6ztRIMg5DOMGrTF
         JuPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PHWdya59;
       spf=pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=seanjc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=kjELRSKe3oCrytXInmER03ck238Q289x3tmP7OreFdg=;
        b=p1SMJyZ2apDL9UGLCroyWjCjlOEXgphEAtNdDo5QJov1DIMOY7umcNHAs3bT23X3Ob
         5lBT+BJ9+byX6qJB7abQyeC/sA7F3e+iN1NMpt2ZbnZHGDDK05G8I+4MwWS+wl6Cag3A
         WDuJeCU455vPz1rQ4kM86zUgjHkLISEgaDLmisU200xu9iW2N+t1vvG/M8Zn7UdmJ7nF
         lSlSb9stTqSOG9Z/GjrWiSxNFqwqEbAsENKRtgSP72Nph/3qwiF/zTDF4cFixe99NQRK
         kVLaXcgz8kAE8H11GTpzgwWhfm3dU+lFlXbJtFiEfYrvSLPiS2EM+bNOXNnJolV+W/6G
         lUBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kjELRSKe3oCrytXInmER03ck238Q289x3tmP7OreFdg=;
        b=DTokYv4sC99xdVtaT24QO4ecjIg/psh3FNUUh1KwHdpnaif9YNyfK3i+kNPMU6stGh
         Rq0f4FyzN6NZ9j5CuXb14Nq2azuoCvw3Pra5zobqNBjN7PNW+uwdOD532dJVQMLxJkW3
         cD/OTMt1c6om4mabiuJ6PovTujURLOFhr01Uev+pvMiOJ0ZLodZs6OFV3gpfRJTksLPC
         4XnJ9MWygr5S/L9F2BY5sdd3C5/oB4bmHcjKSdGwR1E+WHzHfy1oZvJmvd24gbByCmLS
         UDY99gG8K5hB6gr0HpZ2M2MAT0DmYGUXYbHVlWmWkrWXKfo3aYiDQNJGyIGpP3zaTXkM
         U9dA==
X-Gm-Message-State: AOAM531d3hMmLdiIpWrwtOu17+k6lxllWP9DY79dmro60Es/U3NAWm7t
	G19dNnoYkGR1unARDKpOFgU=
X-Google-Smtp-Source: ABdhPJyK2IodHeGK6cnLh7P9EUXFDnry8gRgDQR4CCWrYJAYffrznswiQ9iGmZocf7VPntgZ/0nlEg==
X-Received: by 2002:a05:6a00:1344:b029:22b:948b:a548 with SMTP id k4-20020a056a001344b029022b948ba548mr4390744pfu.33.1617221243605;
        Wed, 31 Mar 2021 13:07:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:ec9:: with SMTP id gz9ls1958069pjb.2.gmail; Wed, 31
 Mar 2021 13:07:23 -0700 (PDT)
X-Received: by 2002:a17:902:6845:b029:e4:4d0f:c207 with SMTP id f5-20020a1709026845b02900e44d0fc207mr4783412pln.36.1617221243028;
        Wed, 31 Mar 2021 13:07:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617221243; cv=none;
        d=google.com; s=arc-20160816;
        b=MvYAD9PIRtISIIHJ8/WCSr5eELRuxO0SSxlTc0Tq/Ked7jtwnf0aYE/F9OZU03M3ks
         OV4IwdyXNyXRY1DmrzeDGhpjmJNfU5NiPYYHrSiR7P08stmH9K4x8SAJYwEEe30MG9Wj
         5aPQ3g/88JKk9i1o2xLNMCPyVqU5R7g5dKQucH3Bgv2hEX7O96PvCF0tEUJPjYG3TCZs
         OpxdenXTr0ubb1PUZr+Jd/mUCmz4kldKLAfirWxkoopDKF0i5iZROxk+waTgFo6U+NlZ
         WS8AS+WKrvUwbEymeqYjI6sBVOQ1Jd95zLLRcyEuZQ4GiDWHSW3rfcCZrIVmwNx/k7BQ
         WDmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=j8v7zlQCarZgdFLgATsFe+vW/NFhoDJt/9MWBvCMW3o=;
        b=dP37Ok562bw5OQLfLSHc/NU7NHld6syfmD9y6kqQc6c6ELHbG606ZKfZL66S0lQjWP
         py1M2yuk+UrHv3604s2AZ1RqUqXQq4DXWWZiEz68LRuDjnlNBLRE6rmntadZDAYFn02s
         T001BtZJTsxO8drKM3/z5s1HHng+GlsMMSq7ZAM5oko7r73cGqZ85shJy9mI5wPEbE04
         aOZ1CKVJMlirkjvfYz4Yy08UG1zKCiuwxeM1TbTFLmdA7Yao4B0d2GMuhHy2X8QbCv2e
         OfXr6ulyQs2zbWDAa/wB3KOa0Z7B2DfSUKhDY4WXbHF6nOYS4zNvYMABT4Kf2gk6hFna
         9IZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PHWdya59;
       spf=pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=seanjc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id g23si348112pfu.3.2021.03.31.13.07.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 13:07:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Received: by mail-pf1-x42e.google.com with SMTP id q5so15333086pfh.10
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 13:07:23 -0700 (PDT)
X-Received: by 2002:a63:4763:: with SMTP id w35mr4698071pgk.226.1617221242566;
        Wed, 31 Mar 2021 13:07:22 -0700 (PDT)
Received: from google.com (240.111.247.35.bc.googleusercontent.com. [35.247.111.240])
        by smtp.gmail.com with ESMTPSA id fa21sm3093569pjb.41.2021.03.31.13.07.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Mar 2021 13:07:21 -0700 (PDT)
Date: Wed, 31 Mar 2021 20:07:18 +0000
From: "'Sean Christopherson' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Fangrui Song <maskray@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] kbuild: Merge module sections if and only if
 CONFIG_LTO_CLANG is enabled
Message-ID: <YGTWdju9UiDGRCCJ@google.com>
References: <20210322234438.502582-1-seanjc@google.com>
 <CABCJKudMQ9CP1zhvywTf-_=PY5zmeviURR+=PqsMn_bqa_MV-g@mail.gmail.com>
 <YFoZBY1SqilWAmx4@google.com>
 <CABCJKucYHQ893LS1iCHXivPS05RMDN2BpDFou306jOEbWnt1Dg@mail.gmail.com>
 <YFvBEIkuFY2ajNlG@google.com>
 <202103311228.D42822B@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202103311228.D42822B@keescook>
X-Original-Sender: seanjc@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PHWdya59;       spf=pass
 (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::42e as
 permitted sender) smtp.mailfrom=seanjc@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sean Christopherson <seanjc@google.com>
Reply-To: Sean Christopherson <seanjc@google.com>
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

On Wed, Mar 31, 2021, Kees Cook wrote:
> On Wed, Mar 24, 2021 at 10:45:36PM +0000, Sean Christopherson wrote:
> > On Tue, Mar 23, 2021, Sami Tolvanen wrote:
> > > On Tue, Mar 23, 2021 at 9:36 AM Sean Christopherson <seanjc@google.com> wrote:
> > > >
> > > > On Tue, Mar 23, 2021, Sami Tolvanen wrote:
> > > > > On Mon, Mar 22, 2021 at 4:44 PM Sean Christopherson <seanjc@google.com> wrote:
> > > > > >
> > > > > > Merge module sections only when using Clang LTO.  With gcc-10, merging
> > > > > > sections does not appear to update the symbol tables for the module,
> > > > > > e.g. 'readelf -s' shows the value that a symbol would have had, if
> > > > > > sections were not merged.
> > > > >
> > > > > I'm fine with limiting this to LTO only, but it would be helpful to
> > > > > understand which sections are actually getting merged here.
> > > >
> > > > It doesn't appear to matter which sections get merged, the tables only show the
> > > > correct data if there is no merging whatsoever, e.g. allowing merging for any
> > > > one of the four types (.bss, .data, .rodata and .text) results in breakage.
> > > > AFAICT, merging any sections causes the layout to change and throw off the
> > > > symbol tables.
> > > 
> > > Thanks for the clarification. I can reproduce this issue with gcc +
> > > bfd if any of the sections are merged, but gcc + lld produces valid
> > > symbol tables.
> > 
> > FWIW, clang + bfd also produces mangled tables, so it does appear to be bfd
> > specific.
> 
> Are you able to open a bug against bfd for this?

Yes?  I'll ping you when I run into trouble ;-)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YGTWdju9UiDGRCCJ%40google.com.
