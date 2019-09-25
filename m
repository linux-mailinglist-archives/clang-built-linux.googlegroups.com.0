Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSW2V3WAKGQECW75M5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id AE983BE449
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Sep 2019 20:09:15 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id k13sf86242uap.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Sep 2019 11:09:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569434954; cv=pass;
        d=google.com; s=arc-20160816;
        b=FrNVWjUI+sJynKryW68/49QEULHKI5frDn7SEEi+cR14v2ocDmqzCFKes//WbCnBqF
         dW48ywul8kadRIiyy/WedoXHAhvTps4sqW1vGpN/UFamksTj2fDGvaRU2JU9VbqLl6Qq
         j1YHGv7TfbLatvHUl/I0V2RT/y2ZbPqRfPYEVDNNltgPRRegNG0aK7oYyhqeEFJ2syf2
         I1/u6VXG48JwJCIbAn/I6GImB1P52dzuMsrI0fdYXMIemoW4RnRdvVfeDYP8YtelSdpb
         3zPGL/PxzbvkUHdZ5gUovnmbvffMxW2wUonJ/oWe7wiabWJMAVWAJHluz3sjSCXR+QvT
         4udg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=iB4HtCM7jhTzWS7vRqPMc6nB6RfchCVxbtFUu0pZdG8=;
        b=fTS2MlbCqfoG6OcJXVu05b+WCHNjhfKMLZQBQnvQyCjz9jdL8+Qf72mspzWFcCAflr
         PHgpCsK/mx0AlzLTslYVJEPXCDVw9gBXC8PrG6mTTXZP5mm3IFHqdt/lylDv/HOVkoCg
         fkuv8PylbuOWBUFZMUhOYzbSYjbV4N7Jxb1kdARjsg2TxTDxqAjruOsuBYbf6oe9hNUf
         eibnsjNz93zLU/O1LCfOBZUIkIRJXNzGxfBzHnnywquLUFZolFrT35AFuNkrEhuH7XGp
         miDYAPCTIZaGSYVdVhWtD0b6o1RbJR38oTkWJEoZsuj62ihIRizv+Ym5Cx7OqtsvYuBk
         fIuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=djIhdg5B;
       spf=pass (google.com: domain of 3sa2lxqwkamqxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3Sa2LXQwKAMQxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iB4HtCM7jhTzWS7vRqPMc6nB6RfchCVxbtFUu0pZdG8=;
        b=Oou/IXOXrM/AO5eicYSlnqdJYUTTX7MAIcBlkCbaViMd6fiZKuW+vIdPzDER6A03Ci
         RCfFGKwSZ7TwfEujpUgjVfRAkhe4SjKzsLaW88HbZbQTa/9dDjiePRYvurpMq8mqP56S
         govURsGz1V42gttD3dk8gNO6fa8fjh80HTVRg0PyTBT4PKccfvjbW9L5+KRCliSKMMPB
         G7Soq9W9TlsdFFBqUEAuKjmHXx2CeWqci8L/dkuzGP9ekpsW0LExvDso8ZyFgX1cTiUw
         hc67lJmBOR/KbVONWmqJJ2n0yLYN/vtgET8NWnOKz2r6ro8Lw5FJdTl4XCBQFuIU9hV/
         dc5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iB4HtCM7jhTzWS7vRqPMc6nB6RfchCVxbtFUu0pZdG8=;
        b=Cz/xbCsvBt6P2CekU/YWb8De2GtWdNlHgNSoo9wBz5piphD330AVF/4phP7WKR/wyt
         PSmEpBr901TRSLdRbGhrU2luBPODF1REZtasjAtNn7maLBhOJ+hnhfrfR3OGwmXgFue0
         Yo1a4etoAXp1a4le2h4VRw2ecOEJFeNf0CqebFqzBYCc/uJqbtiRipsA/mzg+1HbwEyL
         6qN3v3Y5vlIK2sTEsoPTVBNslX/VwxF5X7pFLXupb0UtoYeW4uA32u0WicyqTbLwBm5b
         kAAJZVfieJy1Dd9yu4gHLiZ49s6Q0e+qFa1E30dNigUBTWhEXNU81DlPF4isRfEgKZDz
         kOBw==
X-Gm-Message-State: APjAAAUkuemdTgam7dyMI8brgdqT0AyzIvqoxDXkbvcGK1MELOlOCceE
	pK4sTxAa+d/HSHE7mSHpYuI=
X-Google-Smtp-Source: APXvYqycpYwnCdMrXZ/dgmsYEKZZKJvNyGEIVvkA4/7lxoDM42o2CE7ezludXS8PyPeli3HcH8zK/Q==
X-Received: by 2002:ab0:4086:: with SMTP id i6mr363463uad.56.1569434954609;
        Wed, 25 Sep 2019 11:09:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2d8f:: with SMTP id t137ls692919vst.10.gmail; Wed, 25
 Sep 2019 11:09:14 -0700 (PDT)
X-Received: by 2002:a67:f053:: with SMTP id q19mr835913vsm.174.1569434954285;
        Wed, 25 Sep 2019 11:09:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569434954; cv=none;
        d=google.com; s=arc-20160816;
        b=dcE6PfU5gwRVGejy8KVTygvD7L/bqxQ8kl7q6TSeoR49IjVc+UqtmIjsqQjK6gsLpV
         y/lMXDczXidPVhuo5x3w80QK6kNoS/OnRAnUqzIcMvrqG0Q7eiKZySf9Mt6oqn1vMbK7
         BzUZ8wasQ6o2AfLAUeaddd2zF92vjK8PI+602dzbVYDy7yqzcvHsofC++V7a43PfCjPF
         UgekF3w9+YNPiEsPX+XGlUWGAhvqoIMhM4SEgNcrPXH2YVs7vqdublVpfc6TSkH9gEc3
         CI4dfTdHKfC+dJlG7X6XuFMpBbbPZWqygEKLf6OW7o7PGkxb1oyf3H9PhS+RmNDOdcSa
         rqlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=odWFUeVAN7YhnhW55GNbSGYhuzY85XxckGS+YUUU8WI=;
        b=n/pa42mcCz3mjayrSwRqNzqWMpvl+QrGeYldfyWK/QWRPs/xNCM8IfhtP56R158AAP
         z0gwJWpP7e5BK0GKWG3h+N9Upk9CbIoGFmqoStnWG2jEOrqITFiCL6wvjgmDptl1tmGi
         Oj/SSlqoWx77d7joaQIsfxTsyd8x+bxXmwjyi9x19liEqnXV6vbQWAtbJNJpg7gN5Ede
         YIZj7JzUr3DI1DelbfYlBgmsIx+3vC+V9ePLCegySj8gsi1CLV6b8SXBAZ8w5Dt7VnwF
         rvEYeulXs0BNTqc/QXXDZGfY/yi4AZ7g2h/XHJcAd9GCi0Bq3enhOnhRSp1SPRGfLCpn
         Gopw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=djIhdg5B;
       spf=pass (google.com: domain of 3sa2lxqwkamqxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3Sa2LXQwKAMQxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id y14si361173vsj.2.2019.09.25.11.09.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Sep 2019 11:09:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3sa2lxqwkamqxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id z7so3866322plo.3
        for <clang-built-linux@googlegroups.com>; Wed, 25 Sep 2019 11:09:14 -0700 (PDT)
X-Received: by 2002:a65:6285:: with SMTP id f5mr666067pgv.238.1569434953051;
 Wed, 25 Sep 2019 11:09:13 -0700 (PDT)
Date: Wed, 25 Sep 2019 11:09:06 -0700
In-Reply-To: <20190925171025.GF3891@zn.tnic>
Message-Id: <20190925180908.54260-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190925171025.GF3891@zn.tnic>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
Subject: [PATCH v3] x86, realmode: explicitly set entry via ENTRY in linker script
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de
Cc: clang-built-linux@googlegroups.com, maskray@google.com, 
	grimar@accesssoftek.com, ruiu@google.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Peter Smith <Peter.Smith@arm.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=djIhdg5B;       spf=pass
 (google.com: domain of 3sa2lxqwkamqxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3Sa2LXQwKAMQxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

Linking with ld.lld via $ make LD=ld.lld produces the warning:
ld.lld: warning: cannot find entry symbol _start; defaulting to 0x1000

Linking with ld.bfd shows the default entry is 0x1000:
$ readelf -h arch/x86/realmode/rm/realmode.elf | grep Entry
  Entry point address:               0x1000

While ld.lld is being pedantic, just set the entry point explicitly,
instead of depending on the implicit default. The symbol pa_text_start
refers to the start of the .text section, which may not be at 0x1000 if
the preceding sections listed in arch/x86/realmode/rm/realmode.lds.S
were large enough. This matches behavior in arch/x86/boot/setup.ld.

Link: https://github.com/ClangBuiltLinux/linux/issues/216
Suggested-by: Borislav Petkov <bp@alien8.de>
Suggested-by: Peter Smith <Peter.Smith@arm.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/x86/realmode/rm/realmode.lds.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/realmode/rm/realmode.lds.S b/arch/x86/realmode/rm/realmode.lds.S
index 3bb980800c58..64d135d1ee63 100644
--- a/arch/x86/realmode/rm/realmode.lds.S
+++ b/arch/x86/realmode/rm/realmode.lds.S
@@ -11,6 +11,7 @@
 
 OUTPUT_FORMAT("elf32-i386")
 OUTPUT_ARCH(i386)
+ENTRY(pa_text_start)
 
 SECTIONS
 {
-- 
2.23.0.351.gc4317032e6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190925180908.54260-1-ndesaulniers%40google.com.
