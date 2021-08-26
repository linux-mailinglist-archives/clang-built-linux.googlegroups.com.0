Return-Path: <clang-built-linux+bncBCR5PSMFZYORBSURTSEQMGQEIG2NCAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id B348E3F80E6
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 05:21:52 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id l3-20020a056214104300b00366988901acsf1513812qvr.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 20:21:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629948106; cv=pass;
        d=google.com; s=arc-20160816;
        b=CbO8Oxi6sJ8zcT/idQg0I3rMkoTKLi7v+2986uYAQkcU3h+X2zuTfPBkPCwSKx+xkS
         joUnorNFzSG0FW/SEL42jIHRaTqISqeJ3J/isIbncJEn1SI4/de51NIbCpbzA5sVIyME
         Ddv1YcmyIPOQhCLgbAxGm9I2w7oysZDY5pJNMQV5q2GaaBDlV7UEMDU0wnLy1GkPZArE
         Fm3l1YltebfpHNFeiyOnCyH7lq2RsDa1Ug74UMz2ynMXIAwy5VQ6eDWBz/gcCRhRr319
         jqNt9XVJwGeAIo7l5o+oqMovtrnz3K767fiN/iGjG7kJR8r+RDXE40RsG9YegbwBRuW2
         95iA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=UepPOZSe4XCEc//eZFntpCIZFvz1COCb/iIve1jnD6k=;
        b=IsfaUnW3k2riyawlBfEnbFgwkqH/gSeDCcWc/jcdZ/9y8sx/BkPmFmVJLm/CJWJhi8
         Bn3rd0m8fwBt8zTa05fx76knQIFxDvdgdeYx3gDu5drPGAZW5EbN7Wu7DECX87+8nLWp
         ItBYfNFPh0f4SUT0J+kIvcCsdLEBTQ4WOia0/Fc/NjLfaLEMX+P/4Gu8q+5mN5ZKjFxI
         0NPRkYGAH/JrBbj73KaypF+HU1Ni+H/YIX+suBbSe2QyBIedgdezbnEL3+z1fosxX76N
         vvsI2L8ggRoOi/apHoaCtqI8LDNj/beC9w5PLudMbZ1+aj2mraL/JGJ7rrz/GgPrLlP8
         jjkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=eOyho0rn;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UepPOZSe4XCEc//eZFntpCIZFvz1COCb/iIve1jnD6k=;
        b=l8fkSchApsUCHdNYFRdFaYOKEz8IZQS4258jOsD9TkT8MI9S9l+bXzSnFnHRZ65XHa
         1ULGgwJbE0YaJae7YO+lyHblF4I8tSqufVrbX3/dcfvk6WuPTJh3Z1TF0/P5LjOKCmrL
         7bAyvRDH+5lYWw1DAXNok5b92r+aPlIwAawHkIp2kopxY3PsXR3z4cSgJ6f1xGdz2l/8
         oYjRzc/qv/lsMikgbt+gkkDahKsWNsGXAPsPul8/XqQh/LF74khQTHsf+hAdZzF9LYgr
         sSYure5q3OgJIB6pIsfEm88omKW1HTcoaDknkus8DgNRyWUUVE6d5DNCrzqjKUszWDu3
         NyTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UepPOZSe4XCEc//eZFntpCIZFvz1COCb/iIve1jnD6k=;
        b=pb+ROglTO3Kb685iRMFJAEL4/4AqQFjCEz5Cq2GLBZnTfo+cdxticwxebMmiEzaWVL
         d9ohw3VSm40c5NtPnK5S1hq7aa4091zgLw+twKAP0mFalRxa5gu9qSWRp0xsVCuMpCtD
         pQ9nKMnelrx1mlIo7PNqq2c+dunyQJ7Es+oiIhIK5+w3GOBGi+GpXoulI+GwehSs+T56
         5GhewO95bdY4kXVeA9/hS+W0i2RC/KRQIywTlyMp09AjRGtDiJUXJTCxH7FJnUEbrxMh
         LrHMxS/KUWSx3tRmaELwWWdxK+NGNXIsEQ/qXpPizOTv0digYzv+TLxpC5hY5Z57bRrg
         PtZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531bKNMv5RChIokdksd2y95yWnBkYA8mS7zTitFi933OAWaGui7t
	V92i2sgFsqnAeOYXczD4A7M=
X-Google-Smtp-Source: ABdhPJxKA7TA/X9ofQYIcKyisGjIRqFXj1lC0E+GhrCrBs693QLpZXVzFR2S2fUg2dbCHLtanOWo7Q==
X-Received: by 2002:a05:622a:1828:: with SMTP id t40mr1423896qtc.276.1629948106557;
        Wed, 25 Aug 2021 20:21:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2a05:: with SMTP id o5ls2396535qkp.8.gmail; Wed, 25
 Aug 2021 20:21:46 -0700 (PDT)
X-Received: by 2002:a37:9e55:: with SMTP id h82mr1783433qke.42.1629948106127;
        Wed, 25 Aug 2021 20:21:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629948106; cv=none;
        d=google.com; s=arc-20160816;
        b=FVKQ49BZ9FnUB9z9Fml8UTPXCCh6KpmT8S992fyOZzNfrfyyb6TgMCyUjBYIxNNcjK
         X5Nzkk6ykYJWV6NPKCqoOEycTmGqiBTe6FmXq06HQvxPksi/K4xMUGZ0OAxTsnhu27dM
         NZ1Xql3gT/2ECPHwpHSopgEieE/cZ+kBauYH+DqjPNHCznz3CPU2lkYALDMV858dwTaY
         k4d83X6wz0agAa4Hjc8oAsqXUMDXioO4SfbdoXPhqkM6rhrFi+cd2iHZ5roSPW/8Zwj9
         NIQ8eu8ersBku8VdO6xCwSLnSh+YjRqn10JtYSbL0wRSfQnkFlinuNTV23W4eRh/pCYk
         3OTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=QCKuYO49EzpviKloBW7OjMG6hSH9NX8bM9ziXOwpQIk=;
        b=m9FjIL7SK0qHBIR35pIITeUqC3Rr7C2EPix7oB/z0TfGLKCO67gjjxMZd8J6cRq76W
         LhCj73Vm5CWQhP7qdO0dwTFJcEYoqkq9J1KVi2xTmjwuTYYK7JnBHPP0WwriPBjCWHj9
         mAvHUS69UY6HkpdoweW2r8DKYFJIcA4/JcfwuuD66D0MBfiIXwp9U9tZD1KPFVeadHSK
         aR7Qz9eYm3C0EkXE/gTewcYAuvC94rHy97PK1HIvjPe16ft4WA4+DXBWCEY3BVeB6DSo
         SyV4SuHJSN7ztMx1tRIUtck7cjhjGCAurcPrHCdpvj4RGbJoYbDKFS5/ZIlC7CAh37IK
         Qptw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=eOyho0rn;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id n78si129659qkn.1.2021.08.25.20.21.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 20:21:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4Gw7Rm2DYdz9sXM;
	Thu, 26 Aug 2021 13:21:40 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nathan Chancellor <nathan@kernel.org>, Christophe Leroy
 <christophe.leroy@csgroup.eu>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras
 <paulus@samba.org>, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com,
 llvm@lists.linux.dev
Subject: Re: [PATCH v2 2/2] powerpc/bug: Provide better flexibility to
 WARN_ON/__WARN_FLAGS() with asm goto
In-Reply-To: <YSa1O4fcX1nNKqN/@Ryzen-9-3900X.localdomain>
References: <b286e07fb771a664b631cd07a40b09c06f26e64b.1618331881.git.christophe.leroy@csgroup.eu>
 <389962b1b702e3c78d169e59bcfac56282889173.1618331882.git.christophe.leroy@csgroup.eu>
 <YSa1O4fcX1nNKqN/@Ryzen-9-3900X.localdomain>
Date: Thu, 26 Aug 2021 13:21:39 +1000
Message-ID: <87h7fcc2m4.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=eOyho0rn;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Nathan Chancellor <nathan@kernel.org> writes:
> On Tue, Apr 13, 2021 at 04:38:10PM +0000, Christophe Leroy wrote:
>> Using asm goto in __WARN_FLAGS() and WARN_ON() allows more
>> flexibility to GCC.
...
>
> This patch as commit 1e688dd2a3d6 ("powerpc/bug: Provide better
> flexibility to WARN_ON/__WARN_FLAGS() with asm goto") cause a WARN_ON in
> klist_add_tail to trigger over and over on boot when compiling with
> clang:
>
> [    2.177416][    T1] WARNING: CPU: 0 PID: 1 at lib/klist.c:62 .klist_add_tail+0x3c/0x110
> [    2.177456][    T1] Modules linked in:
> [    2.177481][    T1] CPU: 0 PID: 1 Comm: swapper/0 Tainted: G        W         5.14.0-rc7-next-20210825 #1
> [    2.177520][    T1] NIP:  c0000000007ff81c LR: c00000000090a038 CTR: 0000000000000000
> [    2.177557][    T1] REGS: c0000000073c32a0 TRAP: 0700   Tainted: G        W          (5.14.0-rc7-next-20210825)
> [    2.177593][    T1] MSR:  8000000002029032 <SF,VEC,EE,ME,IR,DR,RI>  CR: 22000a40  XER: 00000000
> [    2.177667][    T1] CFAR: c00000000090a034 IRQMASK: 0
> [    2.177667][    T1] GPR00: c00000000090a038 c0000000073c3540 c000000001be3200 0000000000000001
> [    2.177667][    T1] GPR04: c0000000072d65c0 0000000000000000 c0000000091ba798 c0000000091bb0a0
> [    2.177667][    T1] GPR08: 0000000000000001 0000000000000000 c000000008581918 fffffffffffffc00
> [    2.177667][    T1] GPR12: 0000000044000240 c000000001dd0000 c000000000012300 0000000000000000
> [    2.177667][    T1] GPR16: 0000000000000000 0000000000000000 0000000000000000 0000000000000000
> [    2.177667][    T1] GPR20: 0000000000000000 0000000000000000 0000000000000000 0000000000000000
> [    2.177667][    T1] GPR24: 0000000000000000 c0000000017e3200 0000000000000000 c000000001a0e778
> [    2.177667][    T1] GPR28: c0000000072d65b0 c0000000072d65a8 c000000007de72c8 c0000000073c35d0
> [    2.178019][    T1] NIP [c0000000007ff81c] .klist_add_tail+0x3c/0x110
> [    2.178058][    T1] LR [c00000000090a038] .bus_add_driver+0x148/0x290
> [    2.178088][    T1] Call Trace:
> [    2.178105][    T1] [c0000000073c3540] [c0000000073c35d0] 0xc0000000073c35d0 (unreliable)
> [    2.178150][    T1] [c0000000073c35d0] [c00000000090a038] .bus_add_driver+0x148/0x290
> [    2.178190][    T1] [c0000000073c3670] [c00000000090fae8] .driver_register+0xb8/0x190
> [    2.178234][    T1] [c0000000073c3700] [c000000000be55c0] .__hid_register_driver+0x70/0xd0
> [    2.178275][    T1] [c0000000073c37a0] [c00000000116955c] .redragon_driver_init+0x34/0x58
> [    2.178314][    T1] [c0000000073c3820] [c000000000011ae0] .do_one_initcall+0x130/0x3b0
> [    2.178357][    T1] [c0000000073c3bb0] [c0000000011065e0] .do_initcall_level+0xd8/0x188
> [    2.178403][    T1] [c0000000073c3c50] [c0000000011064a8] .do_initcalls+0x7c/0xdc
> [    2.178445][    T1] [c0000000073c3ce0] [c000000001106238] .kernel_init_freeable+0x178/0x21c
> [    2.178491][    T1] [c0000000073c3d90] [c000000000012334] .kernel_init+0x34/0x220
> [    2.178530][    T1] [c0000000073c3e10] [c00000000000cf50] .ret_from_kernel_thread+0x58/0x60
> [    2.178569][    T1] Instruction dump:
> [    2.178592][    T1] fba10078 7c7d1b78 38600001 fb810070 3b9d0008 fbc10080 7c9e2378 389d0018
> [    2.178662][    T1] fb9d0008 fb9d0010 90640000 fbdd0000 <0b1e0000> e87e0018 28230000 41820024
> [    2.178728][    T1] ---[ end trace 52ed3431f58f1847 ]---
>
> Is this a bug with clang or is there something wrong with the patch? The
> vmlinux image is available at [1] if you want to inspect it and our QEMU
> command and the warning at boot can be viewed at [2]. If there is any
> other information I can provide, please let me know.
>
> [1] https://builds.tuxbuild.com/1xDcmp3Tvno0TTGxDVPedRKIKM2/
> [2] https://github.com/ClangBuiltLinux/continuous-integration2/commit/cee159b66a58eb57fa2359e7888074b9da24126c/checks/3422232736/logs

Thanks.

This is the generated assembly:

c0000000007ff600 <.klist_add_tail>:
c0000000007ff600:       7c 08 02 a6     mflr    r0
c0000000007ff604:       f8 01 00 10     std     r0,16(r1)
c0000000007ff608:       f8 21 ff 71     stdu    r1,-144(r1)	^ prolog
c0000000007ff60c:       fb a1 00 78     std     r29,120(r1)	save r29 to stack
c0000000007ff610:       7c 7d 1b 78     mr      r29,r3		r29 = struct klist_node *n
c0000000007ff614:       38 60 00 01     li      r3,1		r3 = 1
c0000000007ff618:       fb 81 00 70     std     r28,112(r1)	save r28 to stack
c0000000007ff61c:       3b 9d 00 08     addi    r28,r29,8	r28 = &n->n_node
c0000000007ff620:       fb c1 00 80     std     r30,128(r1)	save r30 to stack
c0000000007ff624:       7c 9e 23 78     mr      r30,r4		r30 = struct klist *k
c0000000007ff628:       38 9d 00 18     addi    r4,r29,24	r4 = &n->n_ref
c0000000007ff62c:       fb 9d 00 08     std     r28,8(r29)	n->n_node.next = &n->n_node	INIT_LIST_HEAD
c0000000007ff630:       fb 9d 00 10     std     r28,16(r29)	n->n_node.prev = &n->n_node
c0000000007ff634:       90 64 00 00     stw     r3,0(r4)	kref_init(&n->n_ref)
c0000000007ff638:       fb dd 00 00     std     r30,0(r29)	n->n_klist = k
c0000000007ff63c:       0b 1e 00 00     tdnei   r30,0		trap if r30 (k) is not zero


From:

static void knode_set_klist(struct klist_node *knode, struct klist *klist)
{
	knode->n_klist = klist;
	/* no knode deserves to start its life dead */
	WARN_ON(knode_dead(knode));
                ^^^^^^^^^^^^^^^^^
}

Which expands to:

static void knode_set_klist(struct klist_node *knode, struct klist *klist)
{
	knode->n_klist = klist;

	({
		bool __ret_warn_on = false;
		do {
                ...
			} else {
				__label__ __label_warn_on;
				do {
					asm goto(
						"1:   "
						"tdnei"
						"
						" " % 4,
						0 " "\n " ".section __ex_table,\"a\";"
										" "
										".balign 4;"
										" "
										".long (1b) - . ;"
										" "
										".long (%l[__label_warn_on]) - . ;"
										" "
										".previous"
										" "
										".section __bug_table,\"aw\"\n"
										"2:\t.4byte 1b - 2b, %0 - 2b\n"
										"\t.short %1, %2\n"
										".org 2b+%3\n"
										".previous\n"
						:
						: "i"("lib/klist.c"), "i"(62),
						  "i"((1 << 0) | ((9) << 8)),
						  "i"(sizeof(struct bug_entry)),
						  "r"(knode_dead(knode))
                                                  ^^^^^^^^^^^^^^^^^^^^^

						:
						: __label_warn_on);
					asm("");
				} while (0);
				break;
			__label_warn_on:
				__ret_warn_on = true;
			}
		} while (0);
		__builtin_expect(!!(__ret_warn_on), 0);
	});
}

And knode_dead is:

#define KNODE_DEAD		1LU

static bool knode_dead(struct klist_node *knode)
{
	return (unsigned long)knode->n_klist & KNODE_DEAD;
}


So it's meant to warn if (n_klist & KNODE_DEAD) is not equal to zero.

But in the asm:

c0000000007ff600 <.klist_add_tail>:
...
c0000000007ff624:       7c 9e 23 78     mr      r30,r4		r30 = struct klist *k
...
c0000000007ff638:       fb dd 00 00     std     r30,0(r29)	n->n_klist = k
c0000000007ff63c:       0b 1e 00 00     tdnei   r30,0		trap if r30 (k) is not zero


It's just warning if n_klist is not equal to zero. ie. we lost the "& KNODE_DEAD".

In the GCC output you can see it:

c0000000008c8a30 <.klist_node_init>:
c0000000008c8a30:       39 24 00 08     addi    r9,r4,8
c0000000008c8a34:       39 40 00 01     li      r10,1
c0000000008c8a38:       f9 24 00 08     std     r9,8(r4)
c0000000008c8a3c:       f9 24 00 10     std     r9,16(r4)
c0000000008c8a40:       91 44 00 18     stw     r10,24(r4)
c0000000008c8a44:       f8 64 00 00     std     r3,0(r4)
c0000000008c8a48:       54 69 07 fe     clrlwi  r9,r3,31
c0000000008c8a4c:       0b 09 00 00     tdnei   r9,0

ie. the clrlwi is "clear left (word) immediate", and zeroes everything
except bit 0, which is equivalent to "& KNODE_DEAD".


So there seems to be some misunderstanding with clang, it doesn't like
us passing an expression to the inline asm.

AFAIK it is legal to pass expressions as inputs to inline asm, ie. it
doesn't have to just be a variable name.

This patch seems to fix it. Not sure if that's just papering over it though.

diff --git a/arch/powerpc/include/asm/bug.h b/arch/powerpc/include/asm/bug.h
index 1ee0f22313ee..75fcb4370d96 100644
--- a/arch/powerpc/include/asm/bug.h
+++ b/arch/powerpc/include/asm/bug.h
@@ -119,7 +119,7 @@ __label_warn_on:						\
 								\
 			WARN_ENTRY(PPC_TLNEI " %4, 0",		\
 				   BUGFLAG_WARNING | BUGFLAG_TAINT(TAINT_WARN),	\
-				   __label_warn_on, "r" (x));	\
+				   __label_warn_on, "r" (!!(x))); \
 			break;					\
 __label_warn_on:						\
 			__ret_warn_on = true;			\


Generates:

c0000000008e2ac0 <.klist_add_tail>:
c0000000008e2ac0:       7c 08 02 a6     mflr    r0
c0000000008e2ac4:       f8 01 00 10     std     r0,16(r1)
c0000000008e2ac8:       f8 21 ff 71     stdu    r1,-144(r1)
c0000000008e2acc:       fb a1 00 78     std     r29,120(r1)
c0000000008e2ad0:       7c 7d 1b 78     mr      r29,r3
c0000000008e2ad4:       38 60 00 01     li      r3,1
c0000000008e2ad8:       fb c1 00 80     std     r30,128(r1)
c0000000008e2adc:       7c 9e 23 78     mr      r30,r4
c0000000008e2ae0:       38 9d 00 18     addi    r4,r29,24
c0000000008e2ae4:       57 c5 07 fe     clrlwi  r5,r30,31	<-
c0000000008e2ae8:       fb 81 00 70     std     r28,112(r1)
c0000000008e2aec:       3b 9d 00 08     addi    r28,r29,8
c0000000008e2af0:       fb 9d 00 08     std     r28,8(r29)
c0000000008e2af4:       fb 9d 00 10     std     r28,16(r29)
c0000000008e2af8:       90 64 00 00     stw     r3,0(r4)
c0000000008e2afc:       fb dd 00 00     std     r30,0(r29)
c0000000008e2b00:       0b 05 00 00     tdnei   r5,0		<-


cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87h7fcc2m4.fsf%40mpe.ellerman.id.au.
