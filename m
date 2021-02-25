Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB3GX32AQMGQEIOMPHZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 514703250EB
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 14:53:50 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id w10sf3506921plg.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 05:53:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614261229; cv=pass;
        d=google.com; s=arc-20160816;
        b=RILm6+jtpMPylFVWXUlFsRMc3s4IQ4l/N0xata+WBmFsaS/eQpUiZ+Oc+AEkxbGc+v
         hZSyFdtwrSYn7aNb1KpHy85gl14CkZBZPJVPDIUv0PB5KvEWiu4eb/cHpftBqJvskQj8
         2RF9nGzK6N25S9nb836HBirIlR6Giu8GGFesuVl+ae5TyNeOglP3emTcyNKKz2oJiC1l
         YePwhNYtmRFyZwLnQVNdnQYdDqPstIH9KFxDRNCGsTsHR90BUzZlUSKiRcqAyfqM7QJM
         e3qDLFRInRmizyYzCl1QQjcA3YCm6kCM33JklWW517ldp9fy85CnumsyMZspNUrgrDrA
         18oQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ajl8ojxzqWR9HS2RnEuTjz2R1Bna4rQfuaBwMVtHVCM=;
        b=vPARUt3+rZaYtdk9rSEwugf65EBGagH++ZJdH2Z8wQs5uKdFhkDrTaawVwQ9ME+00D
         k8fnrpm4rbBmSZizjU0oOFESdG0VgoDdQUSmaDjMowx1LNXXglYKcJc7cXgoUl6qgVno
         OJCfU6m4oiWOnrxXPCzpHMAivvL3BU454F480kdm1r+4X68/IsVdrXDIYWl/5qjblGBY
         lg8fYbW7EN8IVMbs142qDVfB5pgF4Oh00U5MB2QRiazkaHN3ywpWUOIRQqE+AqBQV/At
         pVvkwqVA13gAtjc2k1OCZvyZyecbpICKijpJwnq1w0ETpOxc6SL/5fgm+J1JOr1zaygW
         R1mQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JsVbrAEJ;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ajl8ojxzqWR9HS2RnEuTjz2R1Bna4rQfuaBwMVtHVCM=;
        b=n2GUbnJRZNeMa9H/fWA+ylSi+3mup/hOVgZZxXHD+enUNlb6FiJMsTHWP1+wAs6boL
         vsk28hhPDpxbW+W3GLVOOwhwUKzlEs7tdDwkNkRGcdLhkiwJdUBxCC3fUU9eDQ2+sxzH
         RPBq/JKVqqD7eocp2hVjrR/RY0xA5UKFAAcIsLchw8WfYfai+u9jMWcWb5BxvuniEtjf
         GgAOViNmlbYoT5GI6rKC+c1kHigBpuFzmkObLfuLBfYGRyhvQ6Liq+49Be4BZ1xjWOjR
         dKqDpTH7DpFTNxIQcBTk1MLE8zgTO9Xi7DGCVot8FTpKXkLdYBXQP+9NrtnXrQOv6Qeg
         SG4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ajl8ojxzqWR9HS2RnEuTjz2R1Bna4rQfuaBwMVtHVCM=;
        b=E64Y+x6Cv21AKRECLFjjdTDPb7Q3EJevmeN4PV//Xds/yR4Pk928nVQotj1mDgLIzy
         BOv1WwJO4qHVhzAK1AldvnrJ7L2+Xr9slLKXSRBeLHos+BzSmyIHanwOd0R07wzh6j92
         690q43DdKXr3Qd2udckPsmHS6bM84dxB8bBIkomBVbZGN5m/QPbcXMDUlPPK5LSnkTpr
         aiwe9yX8zj9EN+sw8b7XvffWdtPmM4PrkGBUl52hI7cFNTqWJWV/AcClwiYtQumCI91G
         WK+l3uZcOXxXgtyGN3MeQApVax4EJvDvrEtyx3OGBnCMLIYtHPmoln2ILGopK79z4s33
         oeCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pScrf1BgGMbr119DCyHgveClcsV6BrCLOp0OfyAhVLkSaHToi
	Q7YpyxgNUGbS7rDQAGfSbdk=
X-Google-Smtp-Source: ABdhPJz0s1NuS5l6Yg3RS2hWay8poxr3djAnU+23pMOxmhQkCEQtjcUY/PQfuBW/zdF2Y8lcyUdDYw==
X-Received: by 2002:a63:1a1d:: with SMTP id a29mr3188606pga.236.1614261228902;
        Thu, 25 Feb 2021 05:53:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f190:: with SMTP id bv16ls3545317pjb.1.gmail; Thu,
 25 Feb 2021 05:53:48 -0800 (PST)
X-Received: by 2002:a17:902:d901:b029:e3:8f73:e759 with SMTP id c1-20020a170902d901b02900e38f73e759mr3244249plz.63.1614261228405;
        Thu, 25 Feb 2021 05:53:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614261228; cv=none;
        d=google.com; s=arc-20160816;
        b=b51q46DbBTKYnsWykgjnECwTOi9gC26uilkvGqrFfm3a9kVD5xuc7hY8Bk4ZzB9NAO
         t8Q6tq99VouIx6xZFMY2js8G2FidgW5V+YxVgYL+w7ToR1cyGLp5XjhWVCipiA4Gu3TR
         AdxApMymKKGP39eQ1NAr/Ydc4Ef8dXIELmvYAAqL8FipbXeGTS4XJ+T96cURfgVwlgiJ
         vwRpwvfYb49QwDCp/RS2jjfb/7aR6tzNVRbQggXHRxUbbcNXcZdgqlP/uXMgtE0a33p/
         B5/4nnXtGxdKPTPBmXUCImjjdaZku5FcXNiZl5yl9in8cnTvVG3Lxi/wdlxEMIRiAemI
         yVJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xgS60CkWJJH07rhr6jfa5onSr1IkenXPOgIdOAitNKo=;
        b=giXn1OTn/Xl6ppCpfZzvrBnjWvVRhhTwLweAfxPt2Xu4DADhnIxSxZtGyzY/1yt2ig
         pBBWxD9EXRC1g6yv4OE3WLiaNFBuL0e9QZInw7oIlyBxmuV56G2IV0AlLH4ZeUOIDA2P
         aJUgf5e0hM8p6TpCmYwclFIXzdTqymJjNyuTraIkjIkO44eQqFFiasCa6HO0UCf8l25u
         WH9iuaD87fN3opQJR1FNzBMG+f8TATaGCU2ukdkda76JIOH5jdZz18z5M/hZoxK1OzPw
         pz9Ena63P4clkRLG6izkk/VAaLRZjpbANbxnSniL8S62wzStGeVxeeEJIX2GAavKQGb2
         qZAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JsVbrAEJ;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id d13si311985pgm.5.2021.02.25.05.53.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 05:53:48 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-265-tuk1uTJFNvGBRAW3_f2KIg-1; Thu, 25 Feb 2021 08:53:43 -0500
X-MC-Unique: tuk1uTJFNvGBRAW3_f2KIg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 471D91009617;
	Thu, 25 Feb 2021 13:53:42 +0000 (UTC)
Received: from treble (ovpn-118-134.rdu2.redhat.com [10.10.118.134])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B3EB619C79;
	Thu, 25 Feb 2021 13:53:41 +0000 (UTC)
Date: Thu, 25 Feb 2021 07:53:39 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Subject: Re: Josh's objtool-crypto Git with Clang-LTO/Clang-CFI
Message-ID: <20210225135339.77qokpo7xcb37ixe@treble>
References: <CA+icZUVOv7ZYWtNTKrVvPn_CZf-Q5c6EejkHKhA4ATt2AEHesw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+icZUVOv7ZYWtNTKrVvPn_CZf-Q5c6EejkHKhA4ATt2AEHesw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=JsVbrAEJ;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Thu, Feb 25, 2021 at 10:12:27AM +0100, Sedat Dilek wrote:
> $ grep 'warning: objtool:'  build-log_5.11.0-10201.2-amd64-clang13-cfi.txt | grep -v  '.text.__cfi_check_fail: unexpected end of section' | grep  'arch/x86/crypto'
> arch/x86/crypto/chacha-x86_64.lto.o: warning: objtool: chacha_2block_xor_avx512vl() falls through to next function chacha_8block_xor_avx512vl()
> arch/x86/crypto/chacha-x86_64.lto.o: warning: objtool: chacha_4block_xor_avx512vl() falls through to next function chacha_8block_xor_avx512vl()
> 
> So the last objtool-warning is seen in both of my clang-lto and
> clang-cfi kernels.
> 
> I have attached chacha-x86_64.* files (see attached tarball) if you
> want to inspect:

Hm, for some reason I got no warnings with the attached file:

$ tools/objtool/objtool check -mralf /tmp/x86-crypto-chacha-x86_64_5.11.0-10201.2-amd64-clang13-cfi/chacha-x86_64.lto.o
$

> Josh, I needed to solve some git merge conflicts.
> Might be good you to choose a new base for objtool-crypto?

I updated the branch based on Linus' tree (should match what I posted
yesterday).

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225135339.77qokpo7xcb37ixe%40treble.
