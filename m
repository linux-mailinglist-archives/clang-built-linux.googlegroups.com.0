Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBAVJRT3AKGQEUZHJJ7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0A31D8B57
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 01:04:36 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id g187sf6669903oif.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 16:04:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589843075; cv=pass;
        d=google.com; s=arc-20160816;
        b=Czen+u5qzhmnomXiMtw/QoCTF6WJVmxcegWvWgg4UDAO+s8//Lulx2m6D2WqnY3v0T
         D7gl3mk9CSEC2wqWqgQK0GVAEFbiE/IiJYMPk3zvEqd6eiqm73HpXkvWzuM4CGoDuXye
         jE1HClsaRwHkCx+t3VX3oT4Yb5h+Jg3Blvitn1fzOQOcBPssNTB71hLzbhpd5/skmrCA
         gYt23fRjt/Z+T62ZlgXN9DNUgNy9NcvJaLg/14has7cufattcKSJAzWXIPDotV20V7a2
         EoTDOWHuMANAORCazxoimu/AL1GWwXZTX0QY91g8Kl10M83gGMLJI/J72kz3kGOuqtZJ
         6dhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=rf6Tq5sal9ZP4Vh97A7vlRBsplEvYrSg64S82wynx/M=;
        b=DWGBqYf6Mt5Yqalhv1OcH0PkbuEJp58jaHuGG/QCMp0O06tf9NNqwq5DUh/6siy/Jz
         AJjelObpNDSn6w/MLmrc5MspV98/3Qk/KZPPcQAPwmaWxALMMDfNaF6eWYWXfIkixzSm
         P0q3sD9zUoPYL2tY8SQyOpfpnIbP07TRUnJjl0DzpdMYRxWlm2FFb+r3245mJRK8O5o9
         p1e+Mdp/ABLY6ge6UMGP/dTg4Ldz6dT5KpIFIV02gQ4BZmVPg+STJyHYNwfGWSP+ncID
         5xr775gBM9oWKiRwvjc/78UJ3fz7SJJ7QqfbL1xyUyZ5xY044Xr/fPJD7Gn5BoXVF6mN
         GyRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Y1CKlPpO;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rf6Tq5sal9ZP4Vh97A7vlRBsplEvYrSg64S82wynx/M=;
        b=X+TF2kw2KeCMMo+ZtIjCq/9FT+l7t5chbTlEqUsxiqcsBqKOvuvL/Pcc/muzpKNiUN
         eV2PdM4oy8/kI7wXMIBwfmuJqCm0mk62zN0dCdOnOcH8k/hGYmbG7zMfzp878Z07UIVl
         SFnxxhyi134eBkPBzU7Unjv+BbPoSqNMlsYTPfcZhlQSjVhjmpab11lblzCcOXvRJq8q
         wpkBKgaVvPDt4oTVEc1Q7laImbSdNWVzcqtHKEOZ8jGV43pGyrKDrTu0NNZxZ+0BOw7k
         Jo5ETqOk1p3Huwk0xFkq/S4i4IYOIFxGiuc/Z4kwrlkDq0it4KSBI9EYnDCPGNVAZIfZ
         E/Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rf6Tq5sal9ZP4Vh97A7vlRBsplEvYrSg64S82wynx/M=;
        b=qEIZl0Y3sGHVvtYPNUCun9Gx+jFaaDetWB30CKbXVJ8IhWBS9OOwpNmLKQ73mQRJ2v
         odAf/UvALql1Z8NLrPi3AkVXDzIe6AqTfMWwRt1BZeNGUYaNUweY2ogdCez5lBetBMnL
         YL2VLUW/Bcc5RSKFsdw6UygWqE5jTNafs6r6je4mOl6d/1IkXWuLAj9Fm+6D9p8UiXBs
         yNm2/PBoiPrpWSQBjYYD2KafsqHX4BGAQpAlM102/zHotfOPjKxCJciMuXmpFfFY17/k
         k5Cx+ENrOw+qu+eWvhzl1+TovjQLMKLv4zQCJlh0rtryPE14xjeejsYqULD+zviPUSaO
         00Fg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531kFf0tezDvj1nUAuvu0LaRZbpH9CCEQ1vx7JGCOxWZUVZBsn7M
	jEvGKXTiOaH6QL2LOnCaaz0=
X-Google-Smtp-Source: ABdhPJzbz1BDFT/Y2f30N3XcHqHfj9IgDyWpKTyuBhqWTlwsCx4hRFoiBP3vJUyy4rPQbG5AhGVU4w==
X-Received: by 2002:a9d:7390:: with SMTP id j16mr13109914otk.43.1589843074773;
        Mon, 18 May 2020 16:04:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:502:: with SMTP id 2ls2202004oif.11.gmail; Mon, 18 May
 2020 16:04:34 -0700 (PDT)
X-Received: by 2002:aca:4b89:: with SMTP id y131mr1238659oia.59.1589843074408;
        Mon, 18 May 2020 16:04:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589843074; cv=none;
        d=google.com; s=arc-20160816;
        b=AkDAVLu1d2qycPvoWYYLCQXBSr5tBKcy3h36ZtxgdplFM26dpnAsd/O5mTAGR80rr0
         SUhOmjDcKWmP1otC8L2IG+6DpNea3X+YvK38vcO5/fYFgJ2vW5x4xRUy8NXWtWaA7DX2
         5gAVx9m2nwSO2Qd5IX0grZy/AWAOJCygCAMSZ7W4PxyR2pdrsscw3EFgiW9CIUzVj9Ob
         phNU73Ix0eKu4i9Rf/LCs+5OL2IpVWlybXZa3tax8b7QXpYPLIpCJRwBURyO91DoPOt8
         qSjchQpakB7QEFYClJ52KPAy0i/leFZ6Mi7cgC2IMPjVWH4cNcOStnTGLFAxrRiw/kcx
         Qv2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RbdoSp6BluJSbg1qOlBGmWOjT56/eb9Ot/HcRT0ANI4=;
        b=OmMAh8NWRdCwenOTg+7lsu6f0aGlAlG92Tuz4R1PXCp/4BsN9koPkkEMGS5Cvthka2
         a2CWaRVlkCwyhTqxMi9evMXOZ/fowaXEx2Q97OtpMO0bWRdoTUnCQ4FCmLYwqb1WYkpH
         +B2QpVvpbh2SNAHg4JmEunUG1xqL/86jVPA9XR504ZkXt4+6CGjq9HEHRtpwANS4fu09
         nxYQ8PcxGB9KgywwclUH+5YTBLx81Wcrq3HZ77ovUlOQhnmmVisMp1i6s0EZ36beimhD
         +aFP8Ay66yVb4cCZepU5dDFniv7fdlSfx2pS8S0G32hy8Sh17rSp3ALmTAO0by/CaRR4
         mZ7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Y1CKlPpO;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id u15si1236682oth.5.2020.05.18.16.04.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 May 2020 16:04:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-280-21bFL1gXMZmlOCXQHlekiA-1; Mon, 18 May 2020 19:04:31 -0400
X-MC-Unique: 21bFL1gXMZmlOCXQHlekiA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D7BCA7BAE;
	Mon, 18 May 2020 23:04:29 +0000 (UTC)
Received: from treble (ovpn-113-47.rdu2.redhat.com [10.10.113.47])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2C6FC79584;
	Mon, 18 May 2020 23:04:29 +0000 (UTC)
Date: Mon, 18 May 2020 18:04:24 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Peter Zijlstra <peterz@infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: objtool warning breaks build for fs/dlm/lock.o
Message-ID: <20200518230424.rftemp76uch4piy7@treble>
References: <CAK8P3a0QkqyA2wq_EbA+oWrLGgVdQwpBvb+G0aKyz60BOLs6fg@mail.gmail.com>
 <20200507232941.jccuywl56bppxfyp@treble>
 <CAK8P3a0G9uOatw93R90nP3tURgx=WW7yDB7qDtC8cwx0DHZqCw@mail.gmail.com>
 <20200518225325.is5ojipcc5uq5y5n@treble>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200518225325.is5ojipcc5uq5y5n@treble>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Y1CKlPpO;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Mon, May 18, 2020 at 05:53:28PM -0500, Josh Poimboeuf wrote:
> > I'm now struggling with a clang -fintegrated-as related failure:
> > 
> > arch/x86/kernel/ftrace_64.o: warning: objtool: missing symbol for insn at offset 0x16
> > make[4]: *** [/git/arm-soc/scripts/Makefile.build:355:
> > arch/x86/kernel/ftrace_64.o] Error 255
> > 
> > Using this as a local workaround, but I'd like to find out if this is a bug
> > in clang or in objtool:
> 
> It seems like an objtool bug, though at first glance I don't know where
> exactly.  It could be a problem with the rb-tree stuff Peter added
> recently.
> 
> That instruction should be part of the __fentry__ function:
> 
>      4: 0000000000000000   165 FUNC    GLOBAL DEFAULT    3 __fentry__
> 
> So find_symbol_containing() should associate it with __fentry__.

Peter, is find_symbol_containing() broken by aliased functions and/or
overlapping symbols?

Symbol table '.symtab' contains 7 entries:
   Num:    Value          Size Type    Bind   Vis      Ndx Name
     0: 0000000000000000     0 NOTYPE  LOCAL  DEFAULT  UND
     1: 0000000000000000     0 NOTYPE  LOCAL  DEFAULT    5 __ksym_marker___fentry__
     2: 000000000000000e     0 NOTYPE  LOCAL  DEFAULT    3 fgraph_trace
     3: 000000000000000f     0 NOTYPE  LOCAL  DEFAULT    3 trace
     4: 0000000000000000   165 FUNC    GLOBAL DEFAULT    3 __fentry__
     5: 000000000000000e     0 NOTYPE  GLOBAL DEFAULT    3 ftrace_stub
     6: 0000000000000000     0 NOTYPE  GLOBAL DEFAULT  UND ftrace_trace_function

Notice the NOTYPEs are inside the FUNC.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200518230424.rftemp76uch4piy7%40treble.
