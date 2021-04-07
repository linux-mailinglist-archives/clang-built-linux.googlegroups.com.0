Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAOIXCBQMGQEKICNMTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 0912A3576CB
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 23:28:34 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id o11sf12338588wrc.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 14:28:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617830913; cv=pass;
        d=google.com; s=arc-20160816;
        b=YkDdQzB9uzVnXL9K6xrmaFJGMoOwxrX/L2v29+jWETKqF+PD3fKzX9FJt1hxT5huKE
         dWXIEDysfZHjxYXOIsRqlzuU3u7cCTGQ0gpV8eEHFFDmL6FsWLBEhgz9aC/udJUC6V9d
         50Zgi1DAgTmUn8hIkutvNA1UCyvteHHgJq5VpThi2JjLIchZoHoGbqIvRVf/HxL6DbnN
         +N7Gy9RwU9s/dZ41zvPUHY9wUESpKPywlsS5DqS83P1zqO3vo8qzZ4eezioulRifcjZk
         dWVXH5aOJ5iv2Oux4NlwkcR1DyZJkDK/E61yilLnd8NEho68GhxUTE4wMES9UJcS119C
         slvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=KxhM3Mb3a9w9bv56Sp+IIn+IxUnL1H/tfqHMbjeULlk=;
        b=EIyxeZRGWMbo2GSSPT+FOIOtb1HJ7TXCRpd+goO+GKeKxULOqse6N4Ltx1OasHPFCy
         0ajLxnaRfTat5k7tGI8AVViLTL62OSBSR0uVsPwUNDJPURBJEYEHXDSw/x/ZRD6t0ZHp
         LhbVzA8TOg50h/vcjc4DBwab/rjwsa35tXC8756/0a1MVykOxD8s3Tmf1cIlerLXcNQP
         Cik5rIF7n9RiVima8cCcvd9TdLP4SoiyYAXyL0YU0+peAb6Dk50BfgBWM2IkFtVIxG9A
         HC6YOC3fTPZs5r5cKxH9RaEC9bWC5PiNahPNv+IyfnO4Hxul5qbzU84QkeevxmsXF8xE
         z6Pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="tGiprS0/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KxhM3Mb3a9w9bv56Sp+IIn+IxUnL1H/tfqHMbjeULlk=;
        b=AszbV/Tp8fZrq6hmPumDRbmFRen9GO6YrFpWqRtLGZQi1OBopt1jHNdXRQV15lvnb0
         WBrtRlzUvrl14g4owRJfTvGkho7L9dJKonG/Ojon/qA7GbaLpEJ2GStLTqX3qreMH9Wp
         EawS3rqk8dkVbpuC7O9sG9f031uVTjA4juVsiK0as9m1RhG2dKfhPeOsih8wuoiOnkvc
         B+V4SL3rohxKb2dMVP+Yqn8RUqgSD7H0Ok0tBiB/c8kG5LtJIctsIbtXbB42IKHV5buJ
         kQFs+X0U5T89+W7RStT9Ms+96qIDojEReyZYBQsKX5uEbT+EeAWsw8hgXzjcqLH1XPg8
         vS1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KxhM3Mb3a9w9bv56Sp+IIn+IxUnL1H/tfqHMbjeULlk=;
        b=U6EkX2gZ1hN8WtG7vX3HiCxoTE3qiJWC28HOGsztJm+1XT0tsILZUbIiKMjxQa489R
         Kcr0j76H7P0WFyjCbra0LogYVWob02+OKpPPFnbJqbKWayoU1hkBt2rYR2Cp2tjEqU84
         Q87GxctNjVvtNDhOU465WKM8KB8ymeZ/rQ2QVrCaWERpFsQQh/xE5/QUb8y+6geeqv4S
         OK5FfZxLDTI0+P0AS/my4iZFdauHWh6lzNhSspGSP27KVW7f0QNZBVs3bTXxGgryX0Df
         bR8UGYoyAKXpulPKlLJuJtnZIXKCQNeRIZhqjX2fBR94R5HGtHAKv9740Ys9XFHtpj8B
         4Nvg==
X-Gm-Message-State: AOAM533zJPBgShnnhzEP40ptyaZd4NI2kK8G6uXht3syWX5RJyX2psvm
	GN36DlwJ3cgjFchKh99lckM=
X-Google-Smtp-Source: ABdhPJyKye5MhnD1UdqBVWCvxVodp/Be56wdAKGDCe+MzGDpaNWnc/fp2QB/LbZD/qLt32hygkGXHA==
X-Received: by 2002:a5d:4d09:: with SMTP id z9mr6536369wrt.426.1617830913783;
        Wed, 07 Apr 2021 14:28:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5348:: with SMTP id t8ls670685wrv.2.gmail; Wed, 07 Apr
 2021 14:28:33 -0700 (PDT)
X-Received: by 2002:a5d:4010:: with SMTP id n16mr6783441wrp.125.1617830912978;
        Wed, 07 Apr 2021 14:28:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617830912; cv=none;
        d=google.com; s=arc-20160816;
        b=A5Z82SeoUvCov/lXs0Xgbtd+QnBrVbzVgNdLCF1m9HQWPBwv+J1L0CQ0VR6XGsOZAJ
         3UFH0IGjitouP+KPflNU++ytmwsJqgMZwQlie7QjnyHX1ZWznv6E8bXeuvZfjQhnXxhq
         BLolAvRsQMistLogGnt4l75ssFpcwUw4Bb7FF1YhsVWkGCQuOz+OPUGijAhlsEZqrvS2
         uccG4JqBWOG4hvirH4RGgeSlSUwpT7QvFzT37647qKjowGmWTZwO52cucmnY1mdBwQed
         ufDS7mD7xB9xyDi9YQrcYp0j746QKha4b5+pY47mSb0BuUhMhSTlXmuI5g9egIjiDRq1
         zJjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XWjUyKOaiYaHrSNGRAQMkzTl2/6YP/Jxn5feXfPwJPw=;
        b=UCB+i7V98jawKJXjKUYyazBhdkrjD7ZTjQbAjP3x8abzMrM+24YS5fqpNsWm5+bvwp
         tKTWkmmd6y2OyCWgF3+D93PMauZh+rKudkHNi7lRd6ZzvFWoYOXxM3QjyPD5QY6vYt4S
         S7WPnSb8dlKMDJ43ignFMJrGLyH9OrxmnCUu3tu9MyNUaplkCxDS29aTgdOsQecy7WcH
         VmrS2IKBTgckn0mRhHg+17e/BCAyyA478AnoREFoACfmRmY7cnbSlPUqFlDFgrLUYgsW
         UWWOb35izQ2kgAPZoIBRnZLs2UuE76y5sTdtOJbHmu7HRoVcQAHnO4cPC0+1Xk+Yqtr/
         tuRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="tGiprS0/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com. [2a00:1450:4864:20::130])
        by gmr-mx.google.com with ESMTPS id p20si113107wma.0.2021.04.07.14.28.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 14:28:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) client-ip=2a00:1450:4864:20::130;
Received: by mail-lf1-x130.google.com with SMTP id h19so388918lfu.9
        for <clang-built-linux@googlegroups.com>; Wed, 07 Apr 2021 14:28:32 -0700 (PDT)
X-Received: by 2002:a19:430e:: with SMTP id q14mr3981418lfa.374.1617830912545;
 Wed, 07 Apr 2021 14:28:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210407185456.41943-1-ndesaulniers@google.com>
 <20210407185456.41943-2-ndesaulniers@google.com> <20210407142121.677e971e9e5dc85643441811@linux-foundation.org>
In-Reply-To: <20210407142121.677e971e9e5dc85643441811@linux-foundation.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 7 Apr 2021 14:28:21 -0700
Message-ID: <CAKwvOdnSRsUj9dvKP_1Dd9+WwLJwaK0mC-T9mL+jsQvRfwLZmg@mail.gmail.com>
Subject: Re: [PATCH 1/2] gcov: re-fix clang-11+ support
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Peter Oberparleiter <oberpar@linux.ibm.com>, Nathan Chancellor <nathan@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Prasad Sodagudi <psodagud@quicinc.com>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="tGiprS0/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130
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

On Wed, Apr 7, 2021 at 2:21 PM Andrew Morton <akpm@linux-foundation.org> wrote:
>
> On Wed,  7 Apr 2021 11:54:55 -0700 Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> > LLVM changed the expected function signature for
> > llvm_gcda_emit_function() in the clang-11 release.  Users of clang-11 or
> > newer may have noticed their kernels producing invalid coverage
> > information:
> >
> > $ llvm-cov gcov -a -c -u -f -b <input>.gcda -- gcno=<input>.gcno
> > 1 <func>: checksum mismatch, \
> >   (<lineno chksum A>, <cfg chksum B>) != (<lineno chksum A>, <cfg chksum C>)
> > 2 Invalid .gcda File!
> > ...
> >
> > Fix up the function signatures so calling this function interprets its
> > parameters correctly and computes the correct cfg checksum. In
> > particular, in clang-11, the additional checksum is no longer optional.
>
> Which tree is this against?  I'm seeing quite a lot of rejects against
> Linus's current.

Today's linux-next; the only recent changes to this single source file
since my last patches were:

commit b3c4e66c908b ("gcov: combine common code")
commit 17d0508a080d ("gcov: use kvmalloc()")

both have your sign off, so I assume those are in your tree?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnSRsUj9dvKP_1Dd9%2BWwLJwaK0mC-T9mL%2BjsQvRfwLZmg%40mail.gmail.com.
