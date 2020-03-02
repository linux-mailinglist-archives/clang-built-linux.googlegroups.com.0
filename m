Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNUV6XZAKGQEKF25VIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 160241761D7
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Mar 2020 19:04:40 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id c7sf297347plr.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Mar 2020 10:04:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583172278; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rj6oOCNwgJbC1nVgpnzh1VnaUsyOdbzGmEuJYen+6TJ6M7jvLvB5mxRY+LS6HIn6FY
         ZzxyxnhsNWkEd0EkRiz5SS1+2u2sRgRV88Ra5bfEL9Y9lE4oY8gyusZWMWnrb41PWWvY
         /tEIL7FFupUl25+LZANhLm1POM3yIzrWzDfBKbHXrhwkme6/uJpZuyPTUKll9LrA1+E3
         AXg82OFyJZ1pWE64mC04mcZUP38iu0cc5ZHfIFSyAPoZtw0pSOVSoVZFx1h7yYQTHyHC
         Bk8I/x9Pz1K5ftmxq0zlMOL7yxAedID2Z8/yo+NyACJ56D03vafEY1bfrlPs3yAWBaWt
         /vyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=4MaG2TtnTqHF4tK58+bw69rC/Hg5K1Yo4PlRSH/eHZI=;
        b=ouW9yXdIlV6aOozNtxuobzzuorcHhGNd+2lS39H//OcxnOmGK3pJhSBk+spsfy9OtV
         kbhwunQTP1+pwi4Tq6vVp/k3gRLGV4eAlXVVTMA8ja+azMUejObjpffrOSi9oR3Y/Aho
         N+J8GXqh5oOHJCxAoPvh0YPmVjpfuHE/uHKEgVM8uYG0MAuaDwolju2pi0P4ST/miSC4
         vabZ4pXXv2PEEOapNJ++7hBJk6cvyyAaVGkn1RORzpafCJScpJ6qRSNY+9RGOrBRibF/
         6X4OD6849dNU61ksyzuywq5wF86IJLwKyCoF02zfJHa9pQMHsMC2cfSwlQEQ0PxSobNR
         xZqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ym6tJWuu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=4MaG2TtnTqHF4tK58+bw69rC/Hg5K1Yo4PlRSH/eHZI=;
        b=n+jr3hgkWoVT7NvygKeBaYlEfEKIUXnlUHJGX6UZsR+2vxhcZ1rZqLrLDzYTPVYje+
         wqSBm1X5HAdMdzeQ/APpAmRrP/fanfqhHpBwCktsRSZXvMfPrDUwpq3hTuj4LOuezm9J
         2uQeno4yhAbx4SBm5IeckafonCMxCawmehifBuUT+oii4Ieox33jpY2VKp7Od21AyGLx
         OolJi6JgJj9/bz31w2B48tU3G6sphAALyT9sb6AmRacO+Zc0Tg3XDNiEvdG56bl6zfjx
         jAOR5nFhhRGII5cGqN68lJ0+V0TvKH/VAJrLi9bVsmjKccpRSq7PX50O/Zj3BXo+MzvT
         DnDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4MaG2TtnTqHF4tK58+bw69rC/Hg5K1Yo4PlRSH/eHZI=;
        b=cKrrkf289Rhn+ykLv7hIE3DZYC+praIMNWeiKVrCw47Xv3JPhSba/mW+lNDENHrNeN
         sXSPCjGA8yLqmYCAcooUGtJEjq0uRwm5Axs4jPhxMT39UEwyzjMwQO6x8Ur5JlB2XxN9
         tKEPAfdKw0uJDBWdsj0ReYLkFx1VVV7SYjxYLVjzzMB+kxqi/CZ3wMATWs2jNWrQcps/
         MuefjNjPegyeMhk+u+1+eqdXW11chTe4UHN3vXGMfmssmM1cGbvehFwjQ/LEfm1qnR/E
         JySHC+MZEmNNS9NFPOxP2Vdw0hQ257za8oylfEl/6zj7vqf1gXZ+VDJ3CQVhaGGvS7yk
         25qg==
X-Gm-Message-State: ANhLgQ0Nh5aRkhRgedUCwk2IbnjrmekarH03vQaJs0lt4US8343aJn53
	JXmOYQaF1Pp1EdH0MAp4r20=
X-Google-Smtp-Source: ADFU+vtfhkyDaFaKVYFKQ+uDeOHyAB+X0IJ+nmXX7dYqLZFXC2mma8VWGm3EhIgB7ulSJOmqWXZL7g==
X-Received: by 2002:a63:42c2:: with SMTP id p185mr142990pga.268.1583172278490;
        Mon, 02 Mar 2020 10:04:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:344d:: with SMTP id lj13ls73639pjb.0.canary-gmail;
 Mon, 02 Mar 2020 10:04:38 -0800 (PST)
X-Received: by 2002:a17:90b:309:: with SMTP id ay9mr168592pjb.22.1583172278103;
        Mon, 02 Mar 2020 10:04:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583172278; cv=none;
        d=google.com; s=arc-20160816;
        b=b+ImIc/RhZyat9c0XBA7KLorjYtOsiXyo8x//fv1bFa+nf8UWI/w1Q29iy/9FRj9/Z
         FZtK7lF3NEJ1LN7D16PnLHqg8rZGqjRn5GVF4oQqfjtkZbibkulAUEmvEU0trvLgFD6D
         +7tD9AaUD+4vMRCooX2J+BtetCxTLSTIxeyw1P4hRgxXL6051SAbvVilKXwsB0mypxMe
         pfv3nr9MzSIVIxxatq/JcKppaEDI/NYz/oK9KRdai6NOJo5WpGhBonYFxmhu3AaemLdC
         WhwnXYx9fdTJORRTo34tfSdoYzItBT6974soABz0acL1QsskU09vBwbupEStCk+jWfSY
         comQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:subject:message-id:date:from:mime-version:dkim-signature;
        bh=PhZlGKgAN/2kNoQht9uTm928C1xE0T0Glavp//JY0Gg=;
        b=MOzoFDUcudGJJvrMJg+PbCNFbcT/LSBhIpP5npHZ9XSwTSUSDOD1IUluwaJ4LK7U+f
         ozgw0eknpb1DUMs+FEychj78Y+xCB+9D5ZoHF4pwcQQ8QKyZ+AxRfV3fDh7s2Hj46EHW
         CkS4Bf3CU7S3CIRfkfYrTbeo9HnZMf21Dq56VfmnouwMD8FaMSzWSCN58HrWkMyB7oqo
         grK390DX49/Ay4JefUEIoEwZgAY+SWGbj7VvHgx9o2leiUyQikIsFmRElA7m03YnE3Gt
         GD6iMSJmvCUFEuEzY2mm1ofchWM2NA7FlUq0z9ec8g+Vg3fLskYhxU6x/9xnPmqOhUTB
         i7Qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ym6tJWuu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id y13si560366plp.0.2020.03.02.10.04.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2020 10:04:38 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Received: by mail-pg1-x52d.google.com with SMTP id u12so179973pgb.10
        for <clang-built-linux@googlegroups.com>; Mon, 02 Mar 2020 10:04:38 -0800 (PST)
X-Received: by 2002:a63:4453:: with SMTP id t19mt78460pgk.381.1583172277328;
 Mon, 02 Mar 2020 10:04:37 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 2 Mar 2020 10:04:26 -0800
Message-ID: <CAKwvOdnpwSoBZjcd0urCkn=+QXn3bOuWsO1HiK5QROErzKSeSA@mail.gmail.com>
Subject: No risk of coronavirus from Zurich office meetup
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ym6tJWuu;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d
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

Attendees of the ClangBuiltLinux meetup we hosted at Google Zurich Feb
7-9 2020:  You may have seen news articles such as:

https://www.npr.org/2020/02/28/810494030/google-employee-tests-positive-for-coronavirus-company-expands-travel-restrictio

"A Google employee in Switzerland has tested positive for the new coronavirus."

I asked our internal response teams about the date range of Feb 6 to
the 11 about possible risk of exposure.  They said:

"Thank you for clarifying the dates of the meetup, which were before
any possible exposure."

So no one was exposed to any risk of coronavirus from attending our meetup.

Sorry for any potential scare the headlines may have caused, and my
personal apologies I didn't clarify this sooner; I made two mistakes:
1. I initially asked about the wrong date ranges.
2. Our internal response tool didn't email me when the response team
updated my ticket.  I've filed a bug to notify them.

Though as always, if you develop symptoms -- such as a cough, fever,
or respiratory illness -- or have been diagnosed with a contagious
illness, please contact a medical professional.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnpwSoBZjcd0urCkn%3D%2BQXn3bOuWsO1HiK5QROErzKSeSA%40mail.gmail.com.
