Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBUORRP3AKGQE6EQABGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA1C1D8895
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 21:58:09 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id d16sf6098725wrv.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 12:58:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589831889; cv=pass;
        d=google.com; s=arc-20160816;
        b=cDs1lWKAOWqi9/neGCzxTBqb08aju2bbLoe/2E6p24jJilHhYkfu7T4/k+WBZYLOEL
         Y/DJ9hvMxYXVYTrBjdYSAT0qavkEPpiW7UjGNhaGKoGaruUcL0+qtC1T7hCgLAEcewD+
         T7uiEjnEEwFmf7fpuFl/AEbnwa+yf8BQUpGnKAsbEBD4A/zxr2HdIZgssiIJQqtCvUmD
         LVvBvOcUbV7pWpXnZjZ15uL4SC36XfLS4p9WIpQNYdvKbG9sMQXSbB8Av+OPi4wl4EdN
         tiUJJyaNCUNCLZYdN6nckDRp6EF5ax8GoWBz3fP0FxC/WUyaoOka9z0zGlDvPQp86Ze0
         EbUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=HFpGphLwCrP/aGCxPFoIUeldlYqAXbIzC0OxSAWeWeo=;
        b=p0LqEdjNLFICeeDfnoBVoAIlATL3MyXABbTVOZz8Ap6CiPrk42YmxVhhKBxj78MAC9
         xDdSZVM8N1vlQKnULalAcd2VOu1Ami8GBYJLSz1qMIkysdWaNoZDcyjHiHH4W+kcVq1Y
         4j7WeLcLkPzRJYAd0hIFqNMIlZqN7fpHHUq2gGW3MV6Tt0bqaaSX4M9fNyyDhVx3thoG
         eE1vsI6f6NncXG86zMZVe1OBPV2oKSPeXuGVIQ8pWPdjhtoQfhjXpkS7yD4RS/HQZTOA
         Z/e3v4DsDAMxvU/fim4MZgt4VyVsRNRVzY6clPct9+j0l3hhL06RoVqlOyMlduW+rg/l
         W7mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HFpGphLwCrP/aGCxPFoIUeldlYqAXbIzC0OxSAWeWeo=;
        b=l2p2jhfldhFJ0pwfSNlnLbaCinOzKI/6VPqonb1wxRn/6FmitK5UqxPDcPIzKpaqsy
         8DYgh6SxOab2zF2PNrnNySQMTkglos9Ffl84jWCX/e+r0Eu3Us0EOB7Wm61jpHorLKlI
         MxAfd4pXKjeJy9ay8wQ5jlNn4HqlQsKyULAi67ziYB0227kTYizD++mssmwDJJf9INYq
         0oiwxE0D0WIDtuv3wMoNvRFXymSK5eAbX7UOtWeQjiGNeHjorREOfHcamZMyNZyW+2Tq
         s2YtO9Jk0MVFfVdtDa0rJKVZLdyKQoho5TyhKEXQryC+g0v3LYRp+6Yd4oFMrCGGalwb
         Shhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HFpGphLwCrP/aGCxPFoIUeldlYqAXbIzC0OxSAWeWeo=;
        b=Qe62UOe6SKQ/cplmrBS7L01L4U6WGpYSZg8zG9Bzc/qmsUzlD4wvHp6zSnY7RWY7c0
         u6LBNBly7usD5+/iq/TETnuN8I2B9bnf+R5kln7mnbjFNNCfDKCmRSZBujDu/opmZ0A0
         8XEzNzYrEzElHuyzI3ZrWLPJmY9WFmYSeG1MPmCIdynO0xn5lsxJ4KxPZRcxLI8Rl1LN
         Yqdc8WRwc0mUpig+2rAclW6KB/EPZ+eiEdN3a8sQPgvIkWuKA6Vo5zYCr4Fi/zSQAtTD
         Bh9KDoDxu5cf5swO0CQY8TK/ZCffztJVVas6usvtd+4Ma4w0l7O92Bs6q8+rZ7LRPYDh
         HQ8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530RLftDcnD7aQZ3hUnSmhsvSZ3nGKQo/FT2QcXudq9f5CJYVCoQ
	ZvtfiHSA4vZXUyuj5kjNFqw=
X-Google-Smtp-Source: ABdhPJzemRXFDTOoXDnhhSsB3Eu4st1MCeXNNhBxDcVicUUcQUEUtOL9CfLlTtgfZFCwleZBIA+Mag==
X-Received: by 2002:adf:f7c6:: with SMTP id a6mr22761010wrq.296.1589831889341;
        Mon, 18 May 2020 12:58:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:2114:: with SMTP id u20ls342011wml.1.canary-gmail;
 Mon, 18 May 2020 12:58:08 -0700 (PDT)
X-Received: by 2002:a1c:2e4d:: with SMTP id u74mr1080199wmu.145.1589831888878;
        Mon, 18 May 2020 12:58:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589831888; cv=none;
        d=google.com; s=arc-20160816;
        b=w91aQVi7XEH3v2763kajYVwti+eMSfU5sgVIPmIxwFirUVpZXnmvHnllQdIbQJeuA3
         j6bjdmuHUJZnPMu1ZfR9mXb3VMFE3SW/Wrou0VHHdvjrB2tg3uGa+t7jS4Ph2J7ytLfn
         zyWPIXV6JZ2R5qq/slYfgZAVKG3evLQWyQ6K1ZXyLZt2h4yGwfXtArEjKrrpT3VEKrOr
         ewx/0JSfV1oyPEKdEM+2ksSKWMMfXJ2aBlXpSCYQYEcZ9rN14FalpOdFlDZZgImNk2uN
         z9h/dMxmS/l+f+usRoyRh0mdBHS47Rbkphj0WbQk2IRYWJVHjDjNyRsDhMwi6cfSlE2o
         R0tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=35u3ElTbAHVKioccigtmlZUUfh+gi5Beii0cVRs2bhE=;
        b=VTt/+dR+t9lZDYN+Ff1Gxl06LiJNAaseGsdJ3mgAQnD2N9Rf4nHygxVIfypPCDJU9d
         Cto5Z1lki9thEPXtU2C7rvUKDbTQmrqxC6svj2MYwWEqaZfBc7S9C2WVWH6VxNcdO4bD
         KwJIJi18ddlZcHO6CljnVk9FHA2ZdvKKety+Em2JHi0ZP98o6FiXoIlUKbw5JEZfwBpq
         JxKeOrjTYxEr6lLXZxBL1ft8L2WuZS4etE3pKNVE27/z0ddT6OPqoizXy6ybj1tJkNKz
         IvIT1UfiODdVjerbhz1AST5P/EB71JkS9iwpp1WXEv2/h4y5+b3/gyAuNX/Kvq+4rZsO
         VBHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.135])
        by gmr-mx.google.com with ESMTPS id q70si40637wme.0.2020.05.18.12.58.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 May 2020 12:58:08 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.135;
Received: from mail-qt1-f170.google.com ([209.85.160.170]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N4i3j-1itMjH1KVT-011gDI for <clang-built-linux@googlegroups.com>; Mon, 18
 May 2020 21:58:08 +0200
Received: by mail-qt1-f170.google.com with SMTP id p12so9165620qtn.13
        for <clang-built-linux@googlegroups.com>; Mon, 18 May 2020 12:58:08 -0700 (PDT)
X-Received: by 2002:ac8:2bce:: with SMTP id n14mr17792483qtn.18.1589831887122;
 Mon, 18 May 2020 12:58:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a0QkqyA2wq_EbA+oWrLGgVdQwpBvb+G0aKyz60BOLs6fg@mail.gmail.com>
 <20200507232941.jccuywl56bppxfyp@treble>
In-Reply-To: <20200507232941.jccuywl56bppxfyp@treble>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 18 May 2020 21:57:50 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0G9uOatw93R90nP3tURgx=WW7yDB7qDtC8cwx0DHZqCw@mail.gmail.com>
Message-ID: <CAK8P3a0G9uOatw93R90nP3tURgx=WW7yDB7qDtC8cwx0DHZqCw@mail.gmail.com>
Subject: Re: objtool warning breaks build for fs/dlm/lock.o
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/mixed; boundary="000000000000e2bad405a5f1942f"
X-Provags-ID: V03:K1:1HMJW+RmeRWKYjeM8PqT3gh1kEV50TDl0d+3nAFJB/w3PclAPuc
 yMivbW59GYqfb5itdHFKMCDpdPtxo2DTnSXvgk9ZeEQs24//zE/EfR41L262tGCY0aBDHZF
 WS9mUUMNvRbMk5sASmB24urJe+TLlhsdNzTTF7s7MQXLiciHBTN6LiGlj6WSPATXs47j/ic
 VG1TRyNl52yM9pZIWOEkA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:B68Bp3xDTWs=:hIdzDOgWZoMawWiwE5+Jbo
 VxF1cXrayT6YostAOflOZ2yYTs57TjiAQt9bNBXbzgV4dbgfhQhkdyXUOZqn+uKUYy6t/DsT/
 pGaYG8RlMUjETpJicmPxrkyY+RNRhGYffmw+rHNgxYVt20ZazXNWpWc9Ru/3FLj72RGXnF+mM
 Pvktn2eQrOgAx/ANJzcybDX20xgBIibuSK+32trxhhjnOFUQpQYibxPv8insZPWHDQnvQDWoA
 ftWQI30lGvTJtWeF1Kwe4WwayKTqgQoK10AddaIApnkduC8ZzifM1Dn6sRaeCU8Y6sN8+mdrw
 xOYOlaNCStiRaIKZSbZtx4+GmYmWMwIAuDIY8ob/emnexjYBOuqgchtNyEHEwP0zY3dbr+irW
 jFDZUaK5EKoISuwqzvG2TqUBC20RzBO/+30oepEqnH1HIzotAYwbjLyqZaCIQYJMIp8GO+iLn
 A1SokLQLet3oO5Y9KymI2Lj8kHT5+mjcZg46uizHff4epr/lI38tivYsrluf8/VMDS8ooPU7e
 65tuWkKZWLYS62HE2zULM9rNnyFcfDt18oVtqAt+65W/GIsaFtJQYPt1Ocf1TauyHRhSBWA0h
 mPL9n4LTxnwVxobalWJKvo0H8vHCLYlWtcHBjeV7G56MBKw0VO3xworbu121fG4w/6uu8AVsn
 3n7iiuEeJuhgoKYsMtaJMQivVNEhP9IY0jP+5SqmDyDeLIaJrPWKY6xBLu2MNyIkrrJfcuMoD
 7CJzjrdFJp9EW9eieWhhgXCOX6GLXZnvBxFgGRv30oTIP9qxBLi5kDs3aVTNlqnEXrTOoUHQr
 I/UXiI1b/U8WhUZ7oWUyEHJfby/b4dgj8F+P8ueJlXSrOABFvM=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.135 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

--000000000000e2bad405a5f1942f
Content-Type: text/plain; charset="UTF-8"

On Fri, May 8, 2020 at 1:29 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Wed, May 06, 2020 at 04:07:25PM +0200, Arnd Bergmann wrote:
> > Hi,
> >
> > During randconfig testing with clang-10 I came across a number
> > of additional objtool warnings, I'll send another mail about those
> > when I have collected more information and some object files.
> >
> > This one sticks out however, as objtool returns an error code that
> > stops the build:
>
> > fs/dlm/lock.o: warning: objtool: __receive_convert_reply()+0x1e5: can't find jump dest instruction at .text+0xcaa7
>
> Thanks for sending the patch for this one.  Objtool always gets confused
> by new compiler versions, I really think we need to revert
>
>   644592d32837 ("objtool: Fail the kernel build on fatal errors")
>
> because objtool is never going to be reliable enough such that we can be
> confident that failing the build is the right thing to do.

I'm now struggling with a clang -fintegrated-as related failure:

arch/x86/kernel/ftrace_64.o: warning: objtool: missing symbol for insn
at offset 0x16
make[4]: *** [/git/arm-soc/scripts/Makefile.build:355:
arch/x86/kernel/ftrace_64.o] Error 255

Using this as a local workaround, but I'd like to find out if this is a bug
in clang or in objtool:

diff --git a/arch/x86/kernel/Makefile b/arch/x86/kernel/Makefile
index e77261db2391..b4a0f3dd321d 100644
--- a/arch/x86/kernel/Makefile
+++ b/arch/x86/kernel/Makefile
@@ -38,6 +38,9 @@ OBJECT_FILES_NON_STANDARD_paravirt_patch.o            := y
 ifdef CONFIG_FRAME_POINTER
 OBJECT_FILES_NON_STANDARD_ftrace_$(BITS).o             := y
 endif
+ifdef CONFIG_CC_IS_CLANG
+AFLAGS_ftrace_64.o                                     += -fno-integrated-as
+endif

 # If instrumentation of this dir is enabled, boot hangs during first second.
 # Probably could be more selective here, but note that files related to irqs,

Attaching the broken object file fore reference.

     Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0G9uOatw93R90nP3tURgx%3DWW7yDB7qDtC8cwx0DHZqCw%40mail.gmail.com.

--000000000000e2bad405a5f1942f
Content-Type: application/x-object; name="ftrace_64.o"
Content-Disposition: attachment; filename="ftrace_64.o"
Content-Transfer-Encoding: base64
Content-ID: <f_kacwu4620>
X-Attachment-Id: f_kacwu4620

f0VMRgIBAQAAAAAAAAAAAAEAPgABAAAAAAAAAAAAAAAAAAAAAAAAAFACAAAAAAAAAAAAAEAAAAAA
AEAABwABAEiBPCUAAAAAAAAAAHUBw0iB7KgAAABIiUQkUEiJTCRYSIlUJGBIiXQkaEiJfCRwTIlE
JEhMiUwkQEjHRCR4AAAAAEiJ6kiJVCQgSIu0JLAAAABIi7wkqAAAAEiJvCSAAAAASIPvBUyLBCUA
AAAAQf/QSItsJCBMi0wkQEyLRCRISIt8JHBIi3QkaEiLVCRgSItMJFhIi0QkUEiBxKgAAADpaf//
/wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAF8AAAAAAAUAAAAAAAAAAAAAAAAAAAAAADYAAAAA
AAMADgAAAAAAAAAAAAAAAAAAAD0AAAAAAAMADwAAAAAAAAAAAAAAAAAAAG0AAAASAAMAAAAAAAAA
AAClAAAAAAAAAEMAAAAQAAMADgAAAAAAAAAAAAAAAAAAABIAAAAQAAAAAAAAAAAAAAAAAAAAAAAA
AAQAAAAAAAAACwAAAAYAAAAAAAAAAAAAAAgAAAAAAAAACwAAAAUAAAAAAAAAAAAAAGoAAAAAAAAA
CwAAAAYAAAAAAAAAAAAAAAAucmVsYS5lbnRyeS50ZXh0AGZ0cmFjZV90cmFjZV9mdW5jdGlvbgAu
ZGlzY2FyZC5rc3ltAGZncmFwaF90cmFjZQBmdHJhY2Vfc3R1YgAuc3RydGFiAC5zeW10YWIAX19r
c3ltX21hcmtlcl9fX2ZlbnRyeV9fAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABPAAAAAwAAAAAAAAAAAAAAAAAAAAAAAADYAQAA
AAAAAHgAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAADAAAAAEAAAAGAAAAAAAAAAAAAAAA
AAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAYAAAABAAAABgAAAAAA
AAAAAAAAAAAAAEAAAAAAAAAApQAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAABAAAABAAA
AAAAAAAAAAAAAAAAAAAAAACQAQAAAAAAAEgAAAAAAAAABgAAAAMAAAAIAAAAAAAAABgAAAAAAAAA
KAAAAAEAAAACAAAAAAAAAAAAAAAAAAAA5QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAA
AAAAAAAAAFcAAAACAAAAAAAAAAAAAAAAAAAAAAAAAOgAAAAAAAAAqAAAAAAAAAABAAAABAAAAAgA
AAAAAAAAGAAAAAAAAAA=
--000000000000e2bad405a5f1942f--
