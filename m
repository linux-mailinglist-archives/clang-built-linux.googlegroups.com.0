Return-Path: <clang-built-linux+bncBAABBCW5UP7AKGQER2HHTDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id B54902CD845
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 14:56:27 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id v50sf995422otb.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 05:56:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607003786; cv=pass;
        d=google.com; s=arc-20160816;
        b=LpIBrjAI9NqYqvd8jGXxX8pDUtxzOEGEJ7jh+R/4AEpuXnPZpFD+VTm9YwqhnFa+9N
         8cgHF7RglRdI+G0PK4Jd2Ij0s03lceBx2vEnx6O++qbMSFQsRxksQi31JOR92A+YDyf+
         o37GDbWFVTj2vw5SzKMY33tvHbP88x64bEo6T+W4BEUJYonXTCs9b7HohNuTGcx2aMgl
         vJfLDR9VgRZHMIyteJ1B4BVBMyj6vOQ56SvO8HbAGnYAsssmdWkoRldSlxhLTfIx30dP
         Ufd/VXmGlwQE9V/GdyFIsaMene0nF/xh0KhkUBtDXbcUPHX+gWWTVtgcVL/Ho1LZoyHp
         ta8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=opjo39e3F6p2nGB7Rpk5YJixZoLSrpNlv2mDSwvZ4bM=;
        b=a8M0fCnXStdeXPR8WOMzbEX9QZnFgx1Fm2eQSti0wwpMX3kE6eqcnkMI9DOK2q31Kr
         Yo8F+maD/pujoMdpi0p63RlzoT+jjNbzEESDzftA6/CBBI0V0kPDRXvU62RtoEzRz2mx
         6Og5e9YZ6O6jQR/6e3TXyh6kOXmQj+lmopbO92r9jgZomKUDPYnLv5c0Q2cewEINt/HM
         j+g8Yhc0yyala4MV+3acNRj+5YSJup8EzxZ57NMaet9eEB/IztGzKQAyqybcsG6F1zH5
         AjirYJHQ3t992gEvQWHYpFOfamyaTkbLcD4794zhNAaSuq22VQwuJIbuP8dFe14DMflG
         9cGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JtkIcsXM;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=opjo39e3F6p2nGB7Rpk5YJixZoLSrpNlv2mDSwvZ4bM=;
        b=bN06LSNxyV7LDRra6MOswqTlb8vd7Ko1oqMTvO8vdXBEVsQkh5MHG0f1DxKP5X7xcG
         5GUYz1wFTtnwNkPSkqD0UxByuvXH8ngqfxCF5fhzFSvloawnUADd2D7rR82/u2wv/3JM
         7OLL39C0PL8qLC+HOJspCyaZguvqJFdZnqbi+OMD3LdvtRUJBTeErK9SuIOoqV1E3byF
         9EIHE03dlQgsISTZOHf+IUwQVfuOqliuV9zJc6rHMibO/OhznR2ErZvA3kYf085DNO1m
         UB/gNWYPiEizl412qwipFg6FR+NyPBMcU58ZBjhGlMGsqOZHmlSPKK5SFRf7fhdgYhLj
         hhNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=opjo39e3F6p2nGB7Rpk5YJixZoLSrpNlv2mDSwvZ4bM=;
        b=XBhhkptD5Cu6HvaF5/LouhgqQcSzGXP791/U1O1rhIKEPoCqREXY1h3J4MY9GVdtEK
         hMcqh/J7qPDopsELQz5AOhsDWpnSJndmrvjWvxTwFfAu2I5c64jzoJcPV6C0SkR1NAIc
         3f9TKM+1h9LALbt/QlonAIIj1T9Bfu6ymk1zWdFp0BVmpaX/wKagfTzy7tVd0sweTGlQ
         FdUDvNHTISW6TL+yzNW3spe5d0i+g8wsD4CCZSZMSaj08ckBO2bLSd/irAmPVzHNXcGm
         RcZH98jeS9L5OUmLrNZgqJ1JWse2KKwUNAHMuOb1X8zUoPTwuaaoaI6Mx8Jim0+yBFb8
         hiWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530jG4Kz2h2XaZE8EB1ajPvZAKN7I02AEVaex8daUr8GxKyNQHbc
	Xj0zDh9w4A3k9vnU0BGODRU=
X-Google-Smtp-Source: ABdhPJxIWIMbTGDG1gRu8dLS+upWWMpLq4D9/6jbIlLRWZ7yJDaLhdlfCPBNctoQ58cJgqv3Tzo7Ng==
X-Received: by 2002:a05:6830:188:: with SMTP id q8mr2188327ota.96.1607003786433;
        Thu, 03 Dec 2020 05:56:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:448b:: with SMTP id v11ls1415006oiv.7.gmail; Thu, 03 Dec
 2020 05:56:26 -0800 (PST)
X-Received: by 2002:aca:510c:: with SMTP id f12mr1831596oib.72.1607003786063;
        Thu, 03 Dec 2020 05:56:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607003786; cv=none;
        d=google.com; s=arc-20160816;
        b=DX6Q+By30OmFSjEBNbsntTfffp+uSYfkDRWOmkNNVwS+cLoVZT+hT4IDT2OO9y9fZ4
         C0jw2qen3feIj6pc7044oltGuCpmGpcXu3bBj760vZlaRt11gFXJhB5/6kAjhBc5K0PE
         GNVvfrjoXlbZZH4MqCTD8c5TeUTSqeSewsjn+NEeSBiR/WPG0gKQZUdxH3jVeVRX/oh/
         6Ri3SFLiw2HVTX+KR5ZOgAv1ToKYP6K67grg+0FhyGb6YknX5NYqRcCACePf4/k1UNa+
         jo2Tvj45e74IiHL9Umw6bKOrGhutymV6kMvWcxvzcZq6b6Sl2g9aC3VvPRWvyGesTrIo
         022Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=UrShxwCOl+Maq4HSIypEwtAdUa0LDyZbN0xT+i5z1kk=;
        b=tM0YDm6KQzOwjU3fEfbkosql5p/kh8IAPxlqf1AzMznviMFqreoI/JjJQg55MA+vdv
         DbIVL9QQixpsCm2vqp5nrp/mmK4ReHWHTLAjATK6qrt9loUbKsnPYofBCjaVHMHqI5uF
         /0y1B9RKW+JJM4h8At/+yR4fOSbJ+f2XyQFDatHl30OMer3dFZCuAy9jvlMzvVgOwwfT
         xciQI0eW0REGcuRwpL2J+nOa8dAiKIXSLLZaW06v1dGQ7mF2ZnjXzP2rhnTaQtu4MJ61
         QViO3Vv6eTxkA9/GpMSQ+lcjRAX/glr7LFhGAwXFN/1MXpsez0uOmqwmML4N2s7W09q3
         z6bA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JtkIcsXM;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w26si101259oih.1.2020.12.03.05.56.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Dec 2020 05:56:26 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
X-Received: by 2002:a9d:be1:: with SMTP id 88mr2155198oth.210.1607003784111;
 Thu, 03 Dec 2020 05:56:24 -0800 (PST)
MIME-Version: 1.0
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 3 Dec 2020 14:56:07 +0100
X-Gmail-Original-Message-ID: <CAK8P3a20LXgEQkYSpbFFrJs1mdg19W72dp3pbebH9Pkpib2g-g@mail.gmail.com>
Message-ID: <CAK8P3a20LXgEQkYSpbFFrJs1mdg19W72dp3pbebH9Pkpib2g-g@mail.gmail.com>
Subject: objtool crashes with some clang produced .o files
To: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/mixed; boundary="000000000000b4881805b58fb9a2"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=JtkIcsXM;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

--000000000000b4881805b58fb9a2
Content-Type: text/plain; charset="UTF-8"

I see occasional randconfig builds failing on x86 with clang-11
and clang-12 when objtool crashes with a segmentation fault.

The simplest test case I managed to create is

$ echo "__SCK__tp_func_cdev_update() { __SCT__tp_func_cdev_update(); }" > file.c
$ clang-12 -c file.c -O2 -fno-asynchronous-unwind-tables
$ ./tools/objtool/objtool orc generate  file.o
Segmentation fault (core dumped)
$ clang-12 -S file.c -O2 -fno-asynchronous-unwind-tables -o-
.text
.file "file.c"
.globl __SCK__tp_func_cdev_update      # -- Begin function
__SCK__tp_func_cdev_update
.p2align 4, 0x90
.type __SCK__tp_func_cdev_update,@function
__SCK__tp_func_cdev_update:             # @__SCK__tp_func_cdev_update
# %bb.0:
xorl %eax, %eax
jmp __SCT__tp_func_cdev_update      # TAILCALL
.Lfunc_end0:
.size __SCK__tp_func_cdev_update, .Lfunc_end0-__SCK__tp_func_cdev_update
                                        # -- End function
.ident "Ubuntu clang version
12.0.0-++20201129052612+ce134da4b18-1~exp1~20201129163253.238"
.section ".note.GNU-stack","",@progbits
.addrsig

The behavior seems to depend on the specific symbol names, and it only happens
for the integrated assembler, not the GNU assembler.

Attaching both .o files for reference.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a20LXgEQkYSpbFFrJs1mdg19W72dp3pbebH9Pkpib2g-g%40mail.gmail.com.

--000000000000b4881805b58fb9a2
Content-Type: application/x-object; name="integrated-as.o"
Content-Disposition: attachment; filename="integrated-as.o"
Content-Transfer-Encoding: base64
Content-ID: <f_ki8wjdxl0>
X-Attachment-Id: f_ki8wjdxl0

f0VMRgIBAQAAAAAAAAAAAAEAPgABAAAAAAAAAAAAAAAAAAAAAAAAAJgBAAAAAAAAAAAAAEAAAAAA
AEAACAABADHA6QAAAAAAVWJ1bnR1IGNsYW5nIHZlcnNpb24gMTIuMC4wLSsrMjAyMDExMjkwNTI2
MTIrY2UxMzRkYTRiMTgtMX5leHAxfjIwMjAxMTI5MTYzMjUzLjIzOAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAGkAAAAEAPH/AAAAAAAAAAAAAAAAAAAAAE4AAAASAAIAAAAAAAAAAAAHAAAA
AAAAADMAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAABAAAAAMAAAD8/////////wAucmVs
YS50ZXh0AC5jb21tZW50AC5ub3RlLkdOVS1zdGFjawAubGx2bV9hZGRyc2lnAF9fU0NUX190cF9m
dW5jX2NkZXZfdXBkYXRlAF9fU0NLX190cF9mdW5jX2NkZXZfdXBkYXRlAGZpbGUuYwAuc3RydGFi
AC5zeW10YWIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAHAAAAADAAAAAAAAAAAAAAAAAAAAAAAAABgBAAAAAAAAgAAAAAAAAAAA
AAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAGAAAAAQAAAAYAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAcA
AAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAEA
AAAAAAAYAAAAAAAAAAcAAAACAAAACAAAAAAAAAAYAAAAAAAAAAwAAAABAAAAMAAAAAAAAAAAAAAA
AAAAAEcAAAAAAAAAVAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQAAAAAAAAAVAAAAAQAAAAAAAAAA
AAAAAAAAAAAAAACbAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAJQAAAANM
/28AAACAAAAAAAAAAAAAAAAAGAEAAAAAAAAAAAAAAAAAAAcAAAAAAAAAAQAAAAAAAAAAAAAAAAAA
AHgAAAACAAAAAAAAAAAAAAAAAAAAAAAAAKAAAAAAAAAAYAAAAAAAAAABAAAAAgAAAAgAAAAAAAAA
GAAAAAAAAAA=
--000000000000b4881805b58fb9a2
Content-Type: application/x-object; name="gnu-as.o"
Content-Disposition: attachment; filename="gnu-as.o"
Content-Transfer-Encoding: base64
Content-ID: <f_ki8wjdya1>
X-Attachment-Id: f_ki8wjdya1

f0VMRgIBAQAAAAAAAAAAAAEAPgABAAAAAAAAAAAAAAAAAAAAAAAAACACAAAAAAAAAAAAAEAAAAAA
AEAACgAJADHA6QAAAAAAVWJ1bnR1IGNsYW5nIHZlcnNpb24gMTIuMC4wLSsrMjAyMDExMjkwNTI2
MTIrY2UxMzRkYTRiMTgtMX5leHAxfjIwMjAxMTI5MTYzMjUzLjIzOAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAEAAAAEAPH/AAAAAAAAAAAAAAAAAAAAAAAAAAADAAEAAAAAAAAAAAAAAAAA
AAAAAAAAAAADAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAADAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAD
AAYAAAAAAAAAAAAAAAAAAAAAAAAAAAADAAUAAAAAAAAAAAAAAAAAAAAAAAgAAAASAAEAAAAAAAAA
AAAHAAAAAAAAACMAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAABmaWxlLmMAX19TQ0tfX3RwX2Z1bmNf
Y2Rldl91cGRhdGUAX19TQ1RfX3RwX2Z1bmNfY2Rldl91cGRhdGUAAAADAAAAAAAAAAQAAAAIAAAA
/P////////8ALnN5bXRhYgAuc3RydGFiAC5zaHN0cnRhYgAucmVsYS50ZXh0AC5kYXRhAC5ic3MA
LmNvbW1lbnQALm5vdGUuR05VLXN0YWNrAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAAQAAAAYAAAAAAAAAAAAA
AAAAAABAAAAAAAAAAAcAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAGwAAAAQAAABAAAAA
AAAAAAAAAAAAAAAAuAEAAAAAAAAYAAAAAAAAAAcAAAABAAAACAAAAAAAAAAYAAAAAAAAACYAAAAB
AAAAAwAAAAAAAAAAAAAAAAAAAEcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAA
AAAsAAAACAAAAAMAAAAAAAAAAAAAAAAAAABHAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAA
AAAAAAAAAAAAMQAAAAEAAAAwAAAAAAAAAAAAAAAAAAAARwAAAAAAAABUAAAAAAAAAAAAAAAAAAAA
AQAAAAAAAAABAAAAAAAAADoAAAABAAAAAAAAAAAAAAAAAAAAAAAAAJsAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAEAAAAAAAAAAAAAAAAAAAABAAAAAgAAAAAAAAAAAAAAAAAAAAAAAACgAAAAAAAAANgA
AAAAAAAACAAAAAcAAAAIAAAAAAAAABgAAAAAAAAACQAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAeAEA
AAAAAAA+AAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAABEAAAADAAAAAAAAAAAAAAAAAAAA
AAAAANABAAAAAAAASgAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAA=
--000000000000b4881805b58fb9a2--
