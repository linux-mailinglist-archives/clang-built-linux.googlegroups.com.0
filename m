Return-Path: <clang-built-linux+bncBDYJPJO25UGBBF6KXX4AKGQE7ZHCCEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 785902215FD
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 22:20:43 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id r19sf2035033qvz.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 13:20:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594844441; cv=pass;
        d=google.com; s=arc-20160816;
        b=TAOhoc/wFsgFPsWWQXuXUg/tE77AjL1Dx3Kdo8V1En1JP34ELWE3kg8TMSBd6nz0SY
         3ZhupbM3a5i7SjI/v5aR7KIDylyhu5xOfaSNqbS4187hzlcCQ8XUJJu4VSTPdY7oFa+v
         h1Gp84/GfszR/nKPOeudf5RWLOJrbd9jRcmjxkF8Dju8lMnCPPvhaVQsO9OcA+cvAxXv
         NW/MAkB4Xx1qWrzePXnzNYJpzeoh6GYUxKRsboXx1qY0yv2984cAKG+53HtzNhSW9P7C
         OD8eSoTpiRTywt5UwCH5nzT4SioAW8IDHVIKJfxHFxrP8P/fFRx3S7or2Mfv0ptxvJEF
         vTbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=fNVIdQgngcwdDtAJTAp/sAeVq3RN3eOL/4EMYcT8M5Q=;
        b=0LuKtnPSDEArPA0CO0OjQlRyx0iF910w7OPd/uvncN5LtBOT4disuq/IRxzmw3bYN6
         e9bZwb2Jmazb/Ft6aga8dnNxDrvDTQiMRhUVQ0RfORGsDClF7aTC7kjwQXQJBQ0Tvhz0
         Cc0SIgu4YYM/X4NBjwXOJGhGZf1NgsqV9+4FEmA8RZIymuoF7L3cxW2tS/L697XQcBzl
         CFL0PgGPVVvPfiXi5EPrdWseohJlCiv8HSBbm8KA9d76GTM4A5zZRoLgILQOnp0o/x6/
         S31iumLnHVMWGUvZ1ny8TKs4cOztwjexRsxcsPC5RV14D7gsHGMkdDflF7leKvAkxXOa
         AgxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SplrsLXL;
       spf=pass (google.com: domain of 3fmupxwwkab0g67l3negb7kl9hh9e7.5hf@maestro.bounces.google.com designates 2607:f8b0:4864:20::a45 as permitted sender) smtp.mailfrom=3FmUPXwwKAB0G67L3NEGB7KL9HH9E7.5HF@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=fNVIdQgngcwdDtAJTAp/sAeVq3RN3eOL/4EMYcT8M5Q=;
        b=WgcAZHD9zR/hQJNc4ozHf4tO85GxXTcJNJlw2qNRK9dj5eoRydmu61CToDtoXV0hcM
         3LPZCsXgUz+Ay8rvLDJjs71zVU2YipvYlXsq6TC3EhIKkq96B/PhIRBLAicPYK9+7ydV
         +UEkZX6JJIV538V+A0IP+qf0rseSzVmeddvGhyEjYBR4j91sUG5vLE86Fb+tQoMjgLZS
         gg3csoYm1UBjut/rQb5XDVbCVzfgM+AgJNNtv+X7TLVUSZ7dJFW6qi4XWrbECDsSWLk9
         cDSFsk9JeS9PqOzeH3bPFrplnsAsywJzHTQMhBDG5pi35TcXYxqnaZxJIUf9f7E7ZBU6
         2HYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fNVIdQgngcwdDtAJTAp/sAeVq3RN3eOL/4EMYcT8M5Q=;
        b=Enlc/VfymWdzTiJLrWgJ74yuu1l0FUvHG05cfvaSZGPBTCmQ5uUT8urKRxj68x7e+I
         DonibtRiJHXutVrl7yQ+j0JOz7WPD8XZsAr3ojaqCoc1mgzYdTKEesTNOEv9gIARxrd8
         0+ENVhfDPqGkc9WmHE85mHzQ/PtNlA6/l8OXpLfSGFiBOwZlDu4yXL5HLF7mgFky1dvj
         mnrLQPI75ENQSmCoEDXmijVvzB+LgNMRE6f5qZiXVDA3iqwFwpYdX7+cVvas/iLpZ3KR
         +Gram92IV5adtwf9KdfjR9be4Rp7uHIBDKc96LRMA155kq/3oqotlvK9W5cvwlIOaaZb
         SzTw==
X-Gm-Message-State: AOAM533tuZ6MZhOK+D9i7drVs9oSt9TUxOuaceaD46U4QBXYX7lOn6GG
	zZlB1AL2Mk+3PHnFrxypz4Y=
X-Google-Smtp-Source: ABdhPJxUl7+rBwcg2nzv75tOspG5Hwbs15xaWPQ9MwmUlxlRo4MHBuRaib5VmQk52hPUlgAmYkWf5A==
X-Received: by 2002:ac8:6d2d:: with SMTP id r13mr1682991qtu.280.1594844439137;
        Wed, 15 Jul 2020 13:20:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:5:: with SMTP id j5ls1617094qki.6.gmail; Wed, 15
 Jul 2020 13:20:38 -0700 (PDT)
X-Received: by 2002:ae9:e517:: with SMTP id w23mr790382qkf.159.1594844438732;
        Wed, 15 Jul 2020 13:20:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594844438; cv=none;
        d=google.com; s=arc-20160816;
        b=HHf8HivZGRp3FLyCvRCytRZGfPMfhM3+WlGN54DiO1DzlPZA20/MERzZWWJYYn/EXY
         k+tf4Jz7dc0cW2XmCNJbb6+3SEAlbU2+DHaZt4/nGiMGiZ9+WsjnnV+Wewlqgw4pEz7D
         ASGr3p8P7lzlGvfwdODhaUL0GHoAsF5wnGlhyAH7oEI4ApPtvbj8UVhfGGTBVWXCeJtz
         QsUAoyF9yaPkms8EzUPxdSTxqN4Sw3tduoNcUmXsZAAkn7Pogzh+NrP35EHlGiSZGmvF
         utvS5PZIaUmx3H4dGZbuQs8p3ot8rZpt8l8/yx78KEfav/5yWUjgOpuwmcVSvBeW9Tnn
         xJ/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=UVIG2oH4HXSKKZQV/g8jYTwuxv7XVt7YUASm8j/HpNc=;
        b=xEn1m0mkGpbVHFD9+jUlsZQ/riUYgVovX2hNdEFBPY0h7XxpWgXiGsXN2C2rslMwY6
         MKWp1KPwrfTr9GWhpJ27yWfOAj+nStm+G/ymNuRJkiIlhBxHwClzUqNx9cFWtPCW2z3O
         JCzXJGn2Sl7y3xUxG5S+UyIUz+8fgdeCQERf15KlZ+wrbHuywvIxtYXfXws6otj8P5Uw
         uzBHK6EmCnO0rWHI8oIbC1Z9JEXJX2OQs3wbDKDxJfIE5VCCX9oXmg/61njxjBkznKxq
         8miQuVzU9p5jFzjWDXoPBL6yH+cjUhgivbGch2IWQgHmNVHRiNciTUPmDKzAAYJChApc
         bUug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SplrsLXL;
       spf=pass (google.com: domain of 3fmupxwwkab0g67l3negb7kl9hh9e7.5hf@maestro.bounces.google.com designates 2607:f8b0:4864:20::a45 as permitted sender) smtp.mailfrom=3FmUPXwwKAB0G67L3NEGB7KL9HH9E7.5HF@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa45.google.com (mail-vk1-xa45.google.com. [2607:f8b0:4864:20::a45])
        by gmr-mx.google.com with ESMTPS id t55si194022qtb.5.2020.07.15.13.20.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jul 2020 13:20:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3fmupxwwkab0g67l3negb7kl9hh9e7.5hf@maestro.bounces.google.com designates 2607:f8b0:4864:20::a45 as permitted sender) client-ip=2607:f8b0:4864:20::a45;
Received: by mail-vk1-xa45.google.com with SMTP id p25so1202775vko.7
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jul 2020 13:20:38 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a9f:3113:: with SMTP id m19mr966432uab.77.1594844438154;
 Wed, 15 Jul 2020 13:20:38 -0700 (PDT)
Message-ID: <00000000000035d7f505aa80a87a@google.com>
Date: Wed, 15 Jul 2020 20:20:38 +0000
Subject: Clang-Built Linux Meeting Notes - July 15, 2020
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000035d7e405aa80a877"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SplrsLXL;       spf=pass
 (google.com: domain of 3fmupxwwkab0g67l3negb7kl9hh9e7.5hf@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::a45 as permitted sender) smtp.mailfrom=3FmUPXwwKAB0G67L3NEGB7KL9HH9E7.5HF@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: ndesaulniers@google.com
Reply-To: ndesaulniers@google.com
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

--00000000000035d7e405aa80a877
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


July 15, 2020
-------------

i386 patches sent to Linus
Plumbers may have an LLVM MC
Asm goto regression needs to get cherry picked to new clang-11 branch
Assembler fixes; Hyperv, x86 crypto. Arm64 regressed
Riscv regressed - still broken though reported upstream? Will check again  
tomorrow
Add Maxim to Linux Plumbers CI
Kernelci doing boot tests w/ clang-10 linux next
Clang-tidy/static-analyzer patches sent upstream
Orphan section handling uncovering all kinds of bugs
Old binutils causing issues w/ clang-10 and PAC
Apt.llvm.org may going away

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/00000000000035d7f505aa80a87a%40google.com.

--00000000000035d7e405aa80a877
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>July 15, 2020<br /></h1><ul><li>i386 patches sen=
t to Linus</li><li>Plumbers may have an LLVM MC</li><li>Asm goto regression=
 needs to get cherry picked to new clang-11 branch</li><li>Assembler fixes;=
 Hyperv, x86 crypto. Arm64 regressed</li><li>Riscv regressed - still broken=
 though reported upstream? Will check again tomorrow</li><li>Add Maxim to L=
inux Plumbers CI</li><li>Kernelci doing boot tests w/ clang-10 linux next</=
li><li>Clang-tidy/static-analyzer patches sent upstream</li><li>Orphan sect=
ion handling uncovering all kinds of bugs</li><li>Old binutils causing issu=
es w/ clang-10 and PAC</li><li>Apt.llvm.org may going away</li></ul><br /><=
hr /><br />Sent by http://go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/00000000000035d7f505aa80a87a%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/00000000000035d7f505aa80a87a%40google.com</a>.<br />

--00000000000035d7e405aa80a877--
