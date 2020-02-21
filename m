Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB57IXTZAKGQEQQN4DOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5421F166C68
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 02:38:01 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id 37sf273888pgq.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 17:38:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582249080; cv=pass;
        d=google.com; s=arc-20160816;
        b=EZqOx0Rz5wBX0da8pCaQzHbYPGfo8TjRjY0Q8UgpCjz/9HADLDQRgkwh+TIlHOSx9M
         doWbzi0PFvDn84s3/qUHOIdp4Q4f8iB+vXLALiqMsxBHGQjGN8Wshsm9rt7Nuv9SRMGQ
         czvOtHGDTr0721+xemr1evuQ6dGsyEa4eKpf4LGAaUQQIvciaQHsTIta9VTxHNvqlxrG
         GGrJnxPleYDUFSsFEgO9wfQvUizQ91bhMuwghvmqDTmoilroqMoN0THVXMn0h40Pv8kX
         1QE8c6FEDOClhOdYV5RiwaarCGhMXD4THyuh3AMBmpdtCdexYT3Y/CMwreUNcO/BK7K4
         2IbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=2/IVnmi2H3Rz1jCBcm4QMindTfwTcGV3PDAO4yq6avc=;
        b=DcDimSriUHAAyAsME+O6+/+LVYl5HPt1JWAj36eoyfANKTkE+h5VZ45XGg/0nO9rwA
         /nM3p5S9FfoLz7EFymVCMfwHizrvh18WtbHebMMHku23vqBcQDyWkFciU8W1pCL0OO6r
         xVJBAMKte3D98jNmFgJ9l+Bcqg9p6zxs4PwLZTsy6ByN58afSOiMi3Y/9y2zTM73fWqv
         RJMLr6PosDj+OpniZHHoMyMPzJpiqbrMCWz+eqLzpUJcE4u0LdRjAInJ/ylt3llPI6Eh
         6KOZQ4nv5qF4CGTIyVvN8t5HcRL9eo1xkBmITz2Ae66hBSOzRO+8Hv90D5jCh9ExpmCg
         3GBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iIwqxWQ4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2/IVnmi2H3Rz1jCBcm4QMindTfwTcGV3PDAO4yq6avc=;
        b=l01toDAOZJ/oMClth4Nt9W1j1fTW6F2eS8/UIpY+ySzW09jfm4KtBvWIW3BgO0tpBv
         SLlOMdva4wLpAiQTT7QgYW3nTH7oBEii4i/ciBAEpRYAei6xyRyBAdw4J8eQy2a6dWuu
         34w42fVfeo8hUt6o6vaGhjNd9JNWjwYyaDg87tCy1Dovm1vKQIIF7nEmyOEx24oYbcdq
         S43rCFjxA4sPM30Sch3bYmy+JEikgFQAdy+/EFnGvcRvLT1XJbA3Y4kVXr7dCeO9Cyt1
         +3P2/ToBCYKf27+l2Zd2OCjeB034e6hMvsFa2LLMUXusRK4wi7oEm6hSaEIp/8qA2rGk
         wGbQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2/IVnmi2H3Rz1jCBcm4QMindTfwTcGV3PDAO4yq6avc=;
        b=B6mr7wfijjUZaY7SKDAHx23igwplhG7SVs50NBFOZCjjHSRfAHLodhOZTkiGVrYv/h
         bez+IWGfb3f6GPSdrqfE71f8LGhl4SWYYNcv8bv1GZTScj0hgSYD0dZWh2nAEwgEUAig
         Ktm28sXATJwn5OuSRF9uxfw71u2tS6jXlMNxrGcVe6DZ3I92YcMuzTOosN1lGfb+u5IH
         oolQVGInmKSZ86J8fyQclvFUK3ZVplNNA4DAp/WGOq9auDoBWI3CCQksj6EriJI0tktl
         gKOBw06ykATzIS9aXQlN8GGsoHOYzYehMZubg0YCwg0TM7ljrQSwJ0vri3W3GDXkRUR0
         it0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2/IVnmi2H3Rz1jCBcm4QMindTfwTcGV3PDAO4yq6avc=;
        b=Wf43DACHLAEgVVInz6HEIM2h6hwWcFp6rS9bJ6DHu9zMcLOsUEa7lCVdNIPPimkudY
         pToWg8qES1wNvJsrMp6J4gliVq+VD+HccpAzuteHQ9xO3DFMcun68of7DIdl1YCp4mqf
         3JC30Ay8Ji0f8na+mWMbjeguKm+6TnFXnwzb0sRZqPcNC/Ao/k/Xuj6NAxjQKAWXyi3k
         RXZhok0QubDL7cgKB4pXtSqztM5RrCPtvshugnBZOVVLgd6KOllYwhaJu9RC1ZoqDpL/
         wieK0ow29vD1isvn6+m2yqXxGc9Y1CSRJpppmffAsmARbh6VW6MQztu/OULVSk5ciysw
         T22Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVAnW1QFuUo6usWHQ3P3k7QJwLbeFlyKt83rjL2ihbdeaBtkGiN
	pnH+bFDR6EWKOZ2InLpx7gs=
X-Google-Smtp-Source: APXvYqw4DhGWY6GcOSK8AIlOiBJEVHLrrjksAVG1maljkM0jJKy7TuC7DAGGESjpNI9/aU11+bR8cg==
X-Received: by 2002:a17:902:7b94:: with SMTP id w20mr33912083pll.257.1582249079776;
        Thu, 20 Feb 2020 17:37:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2a1:: with SMTP id q1ls197481pfs.9.gmail; Thu, 20
 Feb 2020 17:37:59 -0800 (PST)
X-Received: by 2002:aa7:9f88:: with SMTP id z8mr34608589pfr.220.1582249079348;
        Thu, 20 Feb 2020 17:37:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582249079; cv=none;
        d=google.com; s=arc-20160816;
        b=dImj067hdZyzmoqXTqJcLtZbGLRCQoAmw1ALwRXBHEvDcbuWOze10rVul7bGHIYq/E
         6Ua72k3QGVhDEDWEZHhZpJTbgfhjwf7igyoSQ3PnbsRGISsxZt5BI6FfJnDaKQ2xjzjt
         kGE+8YB7SqbmxSuKwuOFFw6cdVM6qbhlr9/Flk7jMYy7enSWiqUIpgjYQi7enmUFt/Bd
         e9OHd55n8j3bdgETWiUadrGSJuAKMi4KPCWixAOB98VShNihHilwhSZQ1NqzrZv0RrAt
         OMKkqKF7RbAZpZm49xlWjSGaPUA2fmX5FV7hJH0eJ3FRLDQ2sPUMR/ecAL3B0WYXfQVN
         e8jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gwaIL0Zgd1393X/RibdnLwLrFqFzUdQWIreaIHF/WLw=;
        b=TI06sgzFTlFokY58fmjlryuS8bJ3aW3IQqa80cRM8F12tA4+5loVSdYEuS9qPk++BV
         0auyQCcR2XWs6Q7Ju47AfUGGaU6hdhiemGjSpDv0BPMOZMvCxZcCE31yo1LTX0KAskG7
         PLqzCh8Qkl7EYb6V20W6EysCqYx0pwH8ndrSs4WanWdIfsIQq3xUoOuKMw9A6Qw8S1zh
         Mxh4ClERt0fYGGMk+mlN+9BUzJCaZfmiJfWAgZInghQutq9RZBLm861MUg4BmGjNW3FE
         p3aHjxGX0Edb0g9BoJQhvPRD6/aQaj1RSqvv0D5U9cS12T3BE7IHInlQmwb6Dhz8WoDm
         XUdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iIwqxWQ4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id 8si75263pfn.1.2020.02.20.17.37.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 17:37:59 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id w6so654086otk.0
        for <clang-built-linux@googlegroups.com>; Thu, 20 Feb 2020 17:37:59 -0800 (PST)
X-Received: by 2002:a9d:21c5:: with SMTP id s63mr13555844otb.142.1582249078447;
        Thu, 20 Feb 2020 17:37:58 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id c10sm460048otl.77.2020.02.20.17.37.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 20 Feb 2020 17:37:57 -0800 (PST)
Date: Thu, 20 Feb 2020 18:37:56 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-mm@kvack.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] mm: kmemleak: Use address-of operator on section
 symbols
Message-ID: <20200221013756.GA8323@ubuntu-m2-xlarge-x86>
References: <20200220051551.44000-1-natechancellor@gmail.com>
 <20200220173501.0de88326911e41b15e27b62f@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200220173501.0de88326911e41b15e27b62f@linux-foundation.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iIwqxWQ4;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Feb 20, 2020 at 05:35:01PM -0800, Andrew Morton wrote:
> On Wed, 19 Feb 2020 22:15:51 -0700 Nathan Chancellor <natechancellor@gmail.com> wrote:
> 
> > Clang warns:
> > 
> > These are not true arrays, they are linker defined symbols, which are
> > just addresses. Using the address of operator silences the warning and
> > does not change the resulting assembly with either clang/ld.lld or
> > gcc/ld (tested with diff + objdump -Dr).
> 
> I guess you forgot to quote the clang output?

Ugh yes, sorry. I can send a v3 later  or here it is if you want to
stitch it in:

../mm/kmemleak.c:1955:28: warning: array comparison always evaluates to a constant [-Wtautological-compare]
        if (__start_ro_after_init < _sdata || __end_ro_after_init > _edata)
                                  ^
../mm/kmemleak.c:1955:60: warning: array comparison always evaluates to a constant [-Wtautological-compare]
        if (__start_ro_after_init < _sdata || __end_ro_after_init > _edata)
                                                                  ^
2 warnings generated.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200221013756.GA8323%40ubuntu-m2-xlarge-x86.
