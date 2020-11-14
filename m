Return-Path: <clang-built-linux+bncBDRZHGH43YJRB37TXT6QKGQE6NNF36Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCC82B2AB6
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 02:59:13 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id n16sf4184017pgk.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 17:59:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605319151; cv=pass;
        d=google.com; s=arc-20160816;
        b=pQsUcFQGxjdc5ybRbQogBbEJ6xbDJX+6+9bbzrTMmz5+Q3fwi6mAUyVtPX+uBm4whb
         KRZkhEA5rIwDVYmAREf84dfWlrvl1uY/2evqmA3tgmQTv/d4sxSNvZw24wSvV1LWgBYk
         WoHDsxUi7IF6mNMeng3uZntDaa4gsIW8PCjJ3q1mUvimsNxmZUXB9Z5jV9JJ3J+9bsTR
         aW1kVX3utET5NSuNA8Ni6P4hFmTucJE3eJskIIHAJ7EmDVCbeAVEhbgjnoAoyHNbJdp4
         hHsM981qGKU8HyHVF1saWKN/VejDHWuymtxXC2Vs8qNqvTYND7hKD+ME5wmGpT1Dzq5M
         BFTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=NJ6Ke3Ogg+MQUG/Mc8Eub/8KqHfoVcD0/V3vAZBpuR0=;
        b=dTYAh6ZuIWkZ8ghejd+Plda4ENzYZ2dNc2AmnL+9l3zi9rjAYmbdP/1z5hz1AZK+kH
         uJJpDLk6G7T866ItFQHA+qWKzX98MgEZqm586AgVjH2NMjVGDN9zlsqQKudnX2tC1xrY
         2R2T5fnSuIGcD9lutJLGs5425DpYp1g0CDEn4nRn/W7U1KQMhf/5pGc9Cr/iJatg4EYG
         4BdPHCF+Cr50JZPxXyKd4i/CrIeiZEDIGisjPfAng/d93CzXFX7Qu/S7O94nbmM7WDtC
         VEOdgjwkhmUefE08raccKYqOtWlGaXswTwgH1TOs2dOnW3v9CrqbLSEohp+f4VLNYc4k
         GOkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ik4yw2YT;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NJ6Ke3Ogg+MQUG/Mc8Eub/8KqHfoVcD0/V3vAZBpuR0=;
        b=R3JqOEI9EN41YYQJMIwSfyDg8oAOmBpGfxqhESBVcJWDBOD8aJ8Wv23wCEhHvc/rNH
         /EZj+stsN4UYiJ/iRRubztCKCCEya5KqXNJbE4DgJheACmJ3vFxQVUd/wdSgCsS/IbbL
         czU7nzE6hO+w5nejSd+WiM+lcj+9M08qJ5zoRUh2kaYVb54CuHGzE7OISX7wdWmCj1ut
         knUNFaWrjhtIeng2kHL0SOZNVs6ngFl7sNqoCBkHHEWLYi10AePeFrxCrDyLRfGrtvuk
         6g50X6SMGPFdGk0G2gbYV6nAJPvu1kbUua31H3h6dnj8QFwR6IzdFptwDJ0YC5xUxuan
         vtUw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NJ6Ke3Ogg+MQUG/Mc8Eub/8KqHfoVcD0/V3vAZBpuR0=;
        b=SWow5uWeKf0udkIREIQYfnnJ0EO5Lw/MxkKtwcfvAfLZU3pMsNhWylLuFNp9HWEOjN
         ZbHSzomH5Naq4rpDF2lyFBZ7IXn1MCSoOwE0xfSMN9ulbA2EiVhuQBJSTBdmBrW6dfi+
         AfDPfe2CdfQyfJOwlir0FazRta+6YwJwC86mWTOFMX7/pWH9NGugAjnwLSGZ2yw6wH0r
         SuZ3MfAgHdC3nyenc62lXBgKWMjx2C9Pnjuv/75sEtNHqqhUhBhdNA/Nk+npEp9yfjkv
         aGTUWkqx3kgia4+yUcuGc3OlV9egHzT8SNl3X0g8pO+hl/uklkKuUVSNkfufV+OzEOTT
         Xc0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NJ6Ke3Ogg+MQUG/Mc8Eub/8KqHfoVcD0/V3vAZBpuR0=;
        b=ew6ZxEjmXHvxVI+BMWPdKgYTPtFdev5TrF1P035AqTNrbVPodRfxl+aiYI/qP8d2to
         hdsfRS+c5/N8NhvbMLEETtOIao29h6AU+uMAAvetR4KOXr6Rc3U+VN7SL8OrFTRdVumC
         Sgj4bkL0YxvK88BuqRsoVlKfqJrx3F/MKhpZDFvAqc6KdNtA8OVe3RWMeByaJZ7Gm504
         XaVd9ebPxPQs+62qimK3wRnKXCnnyxBxObiX61oC8jefGaondg3dRs3a9nXeVy/4z7sO
         /bitiVT4mCWsirdt7Li4LNYVm2JMw1rfP+q0Z1RGaMjPJ3ol5+0bfMX9+7oIvXLiRGjf
         OW6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530oFum3+82iEcmIk7++GE3IdJ4ifkZE5NZllfrCQFDc06ZvzsC2
	5anzWbArC4CIHpPASWfCeaM=
X-Google-Smtp-Source: ABdhPJwmsMnBuqCZgFONTmFKxbfWOxpYFRfMs4SKoxis/ZLyJii5dXSHstb8HeEjTPnlWkRNQjwvWg==
X-Received: by 2002:a63:34c1:: with SMTP id b184mr4136977pga.173.1605319151736;
        Fri, 13 Nov 2020 17:59:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8055:: with SMTP id j82ls2838898pfd.5.gmail; Fri, 13 Nov
 2020 17:59:11 -0800 (PST)
X-Received: by 2002:a63:1a1d:: with SMTP id a29mr4023412pga.19.1605319151074;
        Fri, 13 Nov 2020 17:59:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605319151; cv=none;
        d=google.com; s=arc-20160816;
        b=AQnMLgpZRSzSYSIjE1pwyo3zb7qChugAT1VxJ9qFmhdB1GgCL/JAoZ5OudfEM+Ah9s
         2Kb5Ow1bM7DlCzAy6NknprDZ4w3ifpslaHX0o7F/1ERBcRzbx2J2UcD/7NjyGTOFS0Aq
         OuymB7lodfbzge7s4MMqv/ByU3fVdl4XXK8qQ3PinZEu6Ukpz52OBuhQGTM7Ma24Kbsp
         cH+5GSALcnpa/TRtstJSDpopxznm0geLNvbaY/KzcKalaC+p6zDAL51iXapiFALAxZGn
         m3/qCIAhvR/Qs8A0oY66/VdJDNslWQZAT5q6ymDBQ6pGoZxeG0kMR184STh/ZdKsKqv3
         rXZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7r0K5AbepHsDaPF3+eWVWgzKdiDEkcQlLcEm/Htya0k=;
        b=KAks3MiVhTpD8M4dkSVh36N/1Vz0mKKQ16+53ErLuPSGmzscZynpnDPe5GjSRWqe5M
         E13IGTXBsQGbOUb9497PWMhRJVlQWL5Bjt3rpNR5jN7CtOW5bLKoXIrwj2zFP1So3J7S
         IkA2UrZz3W/usTSpLp937aZN7NliQ3ZmmEgQt85wLWn7BKxIOAX2kXQfrrorUir0G++Z
         HQBs5TBreqajcYBmNhjKffttfViJmw6R+Bi44eRk3hhJ6GTCviFW9bIDDVRxM2r48Sn7
         mGDs0/KYwI0RgPzFAkV8dA6IUnkTEHKZ0WsRldVbC+ahLNZukxKZMYZCjQQ59NMkYpFC
         CpCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ik4yw2YT;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com. [2607:f8b0:4864:20::b42])
        by gmr-mx.google.com with ESMTPS id d2si812928pfr.4.2020.11.13.17.59.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 17:59:11 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) client-ip=2607:f8b0:4864:20::b42;
Received: by mail-yb1-xb42.google.com with SMTP id c18so10432106ybj.10
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 17:59:11 -0800 (PST)
X-Received: by 2002:a25:5f0f:: with SMTP id t15mr5791894ybb.26.1605319150351;
 Fri, 13 Nov 2020 17:59:10 -0800 (PST)
MIME-Version: 1.0
References: <20201109144425.270789-22-alexandre.chartre@oracle.com>
 <202011131552.4kvOb9Id-lkp@intel.com> <CAKwvOdnvhyNs1arkVO1=pw9GB9NePKUfQYAY+Q0Ur9Qe9HJ37w@mail.gmail.com>
 <20201113234701.GV2672@gate.crashing.org> <CANiq72nKMd_BOOowqowLAn0PZ5tu7X8G=8OrpG34qYHGLDGw6Q@mail.gmail.com>
 <20201114002624.GX2672@gate.crashing.org>
In-Reply-To: <20201114002624.GX2672@gate.crashing.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 14 Nov 2020 02:58:59 +0100
Message-ID: <CANiq72n7R5Pfx4q4F9QpTrLK3Jxm0_hFu5FTvM-JcoZgr4SxRg@mail.gmail.com>
Subject: Re: [RFC][PATCH 21/24] x86/entry: Disable stack-protector for IST
 entry C handlers
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	Alexandre Chartre <alexandre.chartre@oracle.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org, 
	kernel test robot <lkp@intel.com>, Arvind Sankar <nivedita@alum.mit.edu>, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ik4yw2YT;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Sat, Nov 14, 2020 at 1:27 AM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> But you cannot limit yourself to the greatest common denominator: the
> kernel wants to use many features only available on newer compiler
> versions, too; this is no different.

What we do is conditionally enable both new and differentiating
features. We don't break GCC or LLVM just because the other introduces
a new shiny feature, nor we break builds with old compilers (except
when raising the minimum supported version).

That is why we need a level of indirection in things like attributes
nowadays, and why patches like the above are not ideal anymore
(regardless of which attribute we are talking about).

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72n7R5Pfx4q4F9QpTrLK3Jxm0_hFu5FTvM-JcoZgr4SxRg%40mail.gmail.com.
