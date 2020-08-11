Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEUKZT4QKGQEI74QTMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C87242164
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Aug 2020 22:52:35 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id f7sf138021plj.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Aug 2020 13:52:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597179154; cv=pass;
        d=google.com; s=arc-20160816;
        b=oy1C9x3On9EjgX2cUUM59Eli9d2/hIC8IC4cFZnWOM3cYcRgIcOaAVBxuXlBvpjuzT
         DtHYmiNDt6ucO2KC0Xvay1yvvd+fv0N389pMIEefmpaShbsPKF4yX0+Z+83Hufkjkb2y
         T2BPirbeTj3pkzv5+uqbGg3VMQDvVhuykc6FdF9S1TvOF/5Ogp/iWlnFGXzcruHLo/Uo
         ee/y6g0LW8CIZXpkwV5hEFPJotBNgz7YvIvtxXm1RzTP4Dqy9fSekAcRDqiUqnJOiEej
         Oajd58x1vP2lkvWid5jZ0nsk9FW4gEvbG6Sx6MTgoJv4AS+SdfuPmTtbDWI1YwEhmFhF
         +Xhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=S+7xmj2UGW1vTnMZXH3tU5ok5gpFDCAmk2lHZiU3o+Y=;
        b=qOR98WM0jIgfeiQrmCJxmDXsS4Fy0lFmaTix7CSePTk/YeF8sSKCeW+mLARhhr9yOz
         puDBIUgArOnqUUSGHxDAjxQ6E6EZ5tGpYgnXiByRq4KkNl8M3/SpEvv9YiusNBAgNL5O
         YjK8tJWPjff5Na2zqqx7v2GiZLVnpAimreGl23wP+W2ddHQLUi0dRuYyUb+hLU1o/f9n
         boQV0+2MY8EVH3vkS26MHD9qbdlI+OCHRDTcba15wR/8/mytoe3WP4sMZQ/vxynDq4sd
         fNtCqtNmHqfQ6+Z1/BAs0M7uCky4xP92InCM1MxlDiVshTSck6uQxZlZSzNL6EyDTfsn
         hp1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kLgvuDoC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=S+7xmj2UGW1vTnMZXH3tU5ok5gpFDCAmk2lHZiU3o+Y=;
        b=TNdDD+sT8xWI+ykUMO15o7JcOSeeitGUeLvbscE79DV6F/QpJ7kTEuqPTxKe5UlWya
         sGi9JxOhqwLHNs7fK8oJMPNeHuNkjyZw+TP+NKXabi4gXjn2aEgJxA/1sUHTTNJcdHur
         +uQNoS21fFP67Pel9fs0ZGsm2hkLqf1eA6NunBQAvj37AcDQ0itj9kVy1r3yVItw53no
         Q5tsJ+Km8WXne6g9uKkvfay1/zbCeBIcl8hCgNQGwDpoSUTl8TpYpn9nhQjmfrUBC6ZK
         6+rQ6MoWut4w71lU7+2VxHgal5jPkPaNaB6hWWE0xWRc3qb/nZ0jytQZNkEH3EDg7Gug
         Ooeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S+7xmj2UGW1vTnMZXH3tU5ok5gpFDCAmk2lHZiU3o+Y=;
        b=et5dleeRWbQBpeJJmG/XJrIkxFKJKCQj+P5f49GNyDs0RETkNQeyLB91IYvRxdihnb
         8CxSwyhL2tCEYMfTR0HxylDoACDC6hBXTBaXx+UIV6I9KHxyfK4Sup51Oq9zY9cnwxAD
         7WlqXAEjsUl+45bbQ3P5/5LbXPWdAdxX3TNNdWJr/Ycbe4eRPwnmrR/T1PZ5Ac1Tv6xN
         Ww0bLyBq1BlEQGNrwMF9WhdGAi72gq07Ci1dWSVmUKIsvBbIHZ4AxSZxm12UwRzF/f2i
         8a7CujoWObAww7zXaMnjKSPUgIFsDkR6JvhXU2bY95SfPij8yIxDn4Pl9o1IfJvC6o4x
         hZrQ==
X-Gm-Message-State: AOAM5334yB/yHJaChPQDH4EHc/Bu0r8Dz654V8tDEe9dK32dET03noD0
	5/4tORLOpjxKYSH0S2oQ0NQ=
X-Google-Smtp-Source: ABdhPJw8VP8D0O7Gjyu+K0xKF/p1LBjosHAh1LCdB0hq98Ozl0Kqs2iOjNXsJyRtCGy/B8e5+9wxYw==
X-Received: by 2002:a17:90b:4c03:: with SMTP id na3mr3008094pjb.29.1597179154663;
        Tue, 11 Aug 2020 13:52:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bf04:: with SMTP id c4ls1794225pjs.3.gmail; Tue, 11
 Aug 2020 13:52:34 -0700 (PDT)
X-Received: by 2002:a17:902:bf03:: with SMTP id bi3mr2525432plb.285.1597179154262;
        Tue, 11 Aug 2020 13:52:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597179154; cv=none;
        d=google.com; s=arc-20160816;
        b=pgBc0JivUenaXG4kZ2E6bhs09CAb1ygh1XVA/IEnoHdlxO+2dGv1FDGI6EA1KIj1Xq
         sVdTbWvuZX3h7RGBPRB4knLIu9czwnGUO6ep2XQH3nnsBcV8ng9HAHlxmWZT0XAAQmhV
         MVawzsFFr5LRuqF6u7Bl3A5dDm43kxu5UT65+FH92vtMH8o1Z8mQ0rM+dmljH4qL53+Z
         9geE0eorPWIe2tLIGCq1RityZ+FWKpn+/sSC4DJnDekyyycEZclv2wuuktYtJCRn/b+L
         S0tPg1lnVMPK+/zzq/1DyPSjDYfm9FWHCek+hQy2Sg78MG/lCC0Gox8YCHbkOqBc3k97
         gKHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Nnv7qHJRbdPD+8Zu3Qzi3do41esqRGeITilQcgmTPao=;
        b=ntNRfMstYZK0HflaZ1sgIM4b8VINR1L/hPKeEzwtc28bNM6jK6mja20xyP+Y+qzUDY
         5ZXRwlig9LMAZyHlz4fTlPkXPFYACnzvT0SNCsxLjj9BphsVdRUh65QjS9AD5camDRQT
         mx0Xm6c1TXIfAvhvzPOBIoHyYUl5KhmA4oFMMFP/jx5V/Hm2RpdCn5UinFJ1TTlqm8a2
         Oei1MJvJ3mDckRkGg1VKB3RtVPEe/6TF5ZQiPwyziCDK+dPf6N+lyxKIGPH7z2CHQbqz
         OBzWi4kh3pNRm1sPDPWkBGjGQi3sxUpk8AH7NenyyA19Exwh+cOEqIefszeje358uvZV
         eG/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kLgvuDoC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id cp11si1435plb.1.2020.08.11.13.52.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Aug 2020 13:52:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Received: by mail-pj1-x1031.google.com with SMTP id d4so36542pjx.5
        for <clang-built-linux@googlegroups.com>; Tue, 11 Aug 2020 13:52:34 -0700 (PDT)
X-Received: by 2002:a17:90a:3ad1:: with SMTP id b75mr2704245pjc.25.1597179150558;
 Tue, 11 Aug 2020 13:52:30 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 11 Aug 2020 13:52:18 -0700
Message-ID: <CAKwvOdn93S1iVM9y6aB+sYvUUjccDV4ymJU7+esWpG+zChAUPQ@mail.gmail.com>
Subject: Intro to the architecture of LLVM
To: clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kLgvuDoC;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031
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

Sharing a link to a talk I gave recently on the basics of working with
LLVM: https://youtu.be/bUTXhcf_aNc

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn93S1iVM9y6aB%2BsYvUUjccDV4ymJU7%2BesWpG%2BzChAUPQ%40mail.gmail.com.
