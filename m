Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBKFN5CBQMGQENTIWPHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBBA362BA7
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 00:58:50 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id y20-20020a170902ed54b02900ec7c5f84e4sf1677017plb.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 15:58:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618613929; cv=pass;
        d=google.com; s=arc-20160816;
        b=toRFVToQVETbmVholDIamW95sUTB2nn2hY9C9+N+hgMKfF95vZfH86+PUYRa7kWx0s
         OLM9TTQ9gK4qDoV8S+leAJMdfHI8oM2cx9U1s/l2hf0CRVJ6TeB5L6iLk9mHZ0aEzsLP
         JVd8Guk6oOV0MbY7MAh9lRioeWBM8U9gmeksOa95Stm6EyfK/HcmsFW6uEjRQGkadqlI
         mYl0i4wrZm3Y4b8oDszQ0Y6bsmCncamF8WWsiBzNuhJjeEwpsSl/1IVEMNsiwkVQ4HTp
         wlAyy0K+4sI+oCS+cYHTVlFnvkvIDsTDBzffJ/V2L9IPuYKl3GEq8xMTU0XIwvfbpVWK
         Yalw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=FTKC0G1o+whzfVweUK7xsTpHj75VJhOGM983Sec72qM=;
        b=jrQ9ZgFMoSoh3nKBdq0npJRSJ+k+lVwRkFw3hKWtckGCrcta4O8pP4HV2bFa6LODuP
         +KsmJRZcy83TyGR8bYHUdDB6tKwPPQLROKDvBSxVGOMMftUvYTb9YfsM1glipCFEkjj2
         NxN2Ty7B0HFGrW6Nll8vvnXN1q/YlINQ8O5ZjmTF7d9Kx/CnaPGcfkLsSp0PqUCCURaY
         by/QqVGj8NF2tvGM8sSaw6z3PICJYknzS7cJT3rY46niRYUEpKDSYee6HOufE1Ort+4O
         dzQXuvXQzf5jv2zAP4yjztw4qiMlwU0apvyiBS0JGHMvVwZsaQiIMdf0Eeohw/FKycNu
         RV+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OWzu2kan;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FTKC0G1o+whzfVweUK7xsTpHj75VJhOGM983Sec72qM=;
        b=omElzBDYJo4xSq2pOKiA4JewLMx0J1uDz4MVWmZpZv72FVCWxoujXDfoS7oVtK+oO6
         oUTrFufg0tfhBWfJp+p2UdHUzoGdMcIIozvxGoymoCAXF6JmtREoxfHocxV7dtf1p8kl
         tzMLlEPXuUx3iKPkWR/HyyFXtnR12WCVyBWkQnoImF97MM6/N3Bx+95WZdDG7KE8CQpH
         kjrDzAQTyQoW+oPB7MnglaS9+Vl8KbRfmdcckrWqdFLJhwbjAF3402wvABJiM9u+vyQE
         nNhgefa29TeYmshbxlGDrasnR3WEq3WWUyPMF1gXtxwYpDCkx9DufzEJuPLnMjHhG/CP
         JGxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FTKC0G1o+whzfVweUK7xsTpHj75VJhOGM983Sec72qM=;
        b=Sjy7DtvasxJjUWGMO5O7MPZnd6PYJAfCdykeSo64NUZCjf5U5n2/pqXaOzSsAXr4fM
         cRXrzTuAkrXha7o7PiNnHaq8JF5HxKNU5zmGNztU2OPNeGm1KvxBoDEhHLqU7MDCY0O8
         7+iyfy0pOteJuVdFSZdfdyp0XTLt3iqsg5/psFj+CREbXbViXsMSzJs8wv07OnDDlRyN
         Feheg/2ajkeyS957QC8+QKgSaU4C1EkFG6FnezjSCdMUvSo9cQQOo5bcWF0N2e5b1yGV
         lAkkutJsZbp+/A7nDmmHAWT8WpXLTws26EqxVFqbPtnjFhEMdrx/m5qTmrcPr9RFod7w
         /H0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Zf3DdZ1Hg18Y262c5fFcpe6xfwLOZwXb2zEdMqh+fSHjoHDvF
	8wpgNJjULy2q/SxLOovxdcM=
X-Google-Smtp-Source: ABdhPJzpsdb16Td9Dfssbh/sLWfxK8lhHcPZl4hT+4Zo9soZ83LqanyfLbHUCPKvNR87RFixLYVRTw==
X-Received: by 2002:a17:902:8606:b029:e6:f01d:9b67 with SMTP id f6-20020a1709028606b02900e6f01d9b67mr11884019plo.83.1618613929148;
        Fri, 16 Apr 2021 15:58:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7246:: with SMTP id c6ls5748584pll.4.gmail; Fri, 16
 Apr 2021 15:58:48 -0700 (PDT)
X-Received: by 2002:a17:90a:b78d:: with SMTP id m13mr6588050pjr.47.1618613928605;
        Fri, 16 Apr 2021 15:58:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618613928; cv=none;
        d=google.com; s=arc-20160816;
        b=T1hES3kIjL3HYAE2NV5PQp2rHv7Id+nQlu+1/FMP2JBS6QV/e0fkzHxjigMtKwNeOT
         JsMtrYUJyMUNGPE7AL/TpG6xcxugwJLh5rkNnXhu4OvvvKiKznaSyaMrTvLDdlC2OGi0
         6HmBKtUEKlqkaY6Vwv8zHtG61UpYHpv6cDhaVms7VYAWEiBXBGGaem1p3CwhyjYB1BuS
         Wfgxo5ktrzs81dH4pfDRwj+s8pYkq6I8Oe7wCir8KX9+NNZNq7ERlaF6vxGZUxKcG1k7
         nofGvy+vtzGZMzbNP115TPUxbGbt9yGk4er/NDrh/AtGYZOv/4jwfYiUGC32r2qyRE4V
         oiGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7lKTje1FDbH8RC7t09nAcBS4GmeuzNtZ7eozWrilT3U=;
        b=GS0xI9zRYPYl7Hz0TW1gh2LPUgryNYCiYKBvImKxxJ97Yl8KGkOPjbIFbLazBu/8vn
         twqB3401tI82AMmv9okmZIi4pPeQIfKct0xCFHcm94jg8VLYhpss21HlFov5Nu1AD9g2
         XmNsrY9iA+8hFoZ7TDLj4tOZIcfo+jXNzzonLWe58FDtlpauM5o1pQOH5iTKNSFCa812
         0S+HZGw8VhmV4HpbVEXBv/y25+KftDlmPIE/Sjpj4pJQm02qIOFh4wKoHif5htXS19Em
         QRoZ7L18V4TJwVH9czMPN1CxscXN4zCdW04Bb7HhDri/mb8J0M2iDRy57JQHJPVkdJCq
         ug4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OWzu2kan;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id h20si540188pfc.0.2021.04.16.15.58.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 15:58:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Received: by mail-pg1-x52c.google.com with SMTP id p2so4696700pgh.4
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 15:58:48 -0700 (PDT)
X-Received: by 2002:a62:2b03:0:b029:241:d147:2a79 with SMTP id r3-20020a622b030000b0290241d1472a79mr9690722pfr.53.1618613928357;
        Fri, 16 Apr 2021 15:58:48 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k21sm2534086pff.214.2021.04.16.15.58.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 15:58:47 -0700 (PDT)
Date: Fri, 16 Apr 2021 15:58:46 -0700
From: Kees Cook <keescook@chromium.org>
To: Andy Lutomirski <luto@kernel.org>
Cc: Borislav Petkov <bp@alien8.de>, Sami Tolvanen <samitolvanen@google.com>,
	X86 ML <x86@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	linux-hardening@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
Message-ID: <202104161555.B8C1E193@keescook>
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-6-samitolvanen@google.com>
 <20210416211855.GD22348@zn.tnic>
 <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com>
 <20210416220251.GE22348@zn.tnic>
 <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com>
 <202104161519.1D37B6D26@keescook>
 <CALCETrV6WYx7dt56aCuUYsrrFya==zYR+p-YZnaATptnaO7w2A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CALCETrV6WYx7dt56aCuUYsrrFya==zYR+p-YZnaATptnaO7w2A@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=OWzu2kan;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Apr 16, 2021 at 03:52:44PM -0700, Andy Lutomirski wrote:
> > > char entry_whatever[];
> > > wrmsrl(..., (unsigned long)entry_whatever);
> >
> > This is just casting. It'll still resolve to the jump table entry.
> 
> How?  As far as clang is concerned, entry_whatever isn't a function at
> all.  What jump table entry?

Whoops, sorry, I misread the [] as (). I thought you were just showing
an arbitrary function declaration, but I see what you mean now.

I am digesting the rest of your email now... :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104161555.B8C1E193%40keescook.
