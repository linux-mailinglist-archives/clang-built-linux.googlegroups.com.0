Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4GTUCEQMGQE525ZOHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5623F912A
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 01:55:30 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id g12-20020a1709026b4cb029012c0d2e483csf1565928plt.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 16:55:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630022129; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q8zVswAZRhhnLvjKtwsoURSwXluThJugwRagi03lEHmVGdS7bGy7xiMc1vRDH+8476
         RWqcssoaogyhyOI3IGjqzpUGWFruJIz9sJH429hh7hvk9VtIgSsUXQuXA6QGQ5SH9pwW
         16oUK5IyJKsFcofWPzH37n/SiaWq8gr1yjOEhWysqD/lGbhnLN65LUoB0INfjqtZCmrW
         rWhIXTUPA5Q5LfzvTwxm7Nja0O0E0uIY2ymxFCW4Ae8VFwHH8sWvz5uuJDiUCuOxp0Ut
         ji1tWufmkxaDP+3+0E+Nmxu05kF8uJz7JhRoFgrF7P+WLB9rLO9f7g98Sp/rhQqSasbB
         x3bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=qOY73Q7BbgfdaIQ3ffIAohaCifBLm4+p62T4reMHjbk=;
        b=RBcl8UB1gJMoX8RO1o0eufGCve5la+dzRjKCwNCKvLYbEANUe++Nm9Wv7qdDlPxe/P
         fI6W0Sz8GI/yIBbtRYwerQ8D6TQdFxcWs5aaNj+wCgJSdY5f/KQ+wcjDJnOrmbrcDKDH
         snvGuRs1SwLXgXN2q+y9ys1vKs5i/Uy7F9H+Cc/f2xcixnn5LIvrBuSdEqHxpWwARioQ
         Qx4WzZbcmsqhKxroLn7d/3AXV+CodvWzOcIMUx0veLRkn2vCiW6H4mOglzN9aNr4Z6nT
         3ZvEEgbgKH+xTfNdCIacn214Tl1WrG9ep1h0g3/u9s022Z7XxgXOKZ/TflsHbePX2UT8
         aw5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Gm0N+2Nw;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qOY73Q7BbgfdaIQ3ffIAohaCifBLm4+p62T4reMHjbk=;
        b=rsDXZxQEfOKx8ADuQ84AAXoJDdP0Ey3H9jaNUqqc+A9CZv91/GOlgiL9KYkCnRKAoj
         pvmh/qKReFsbMMx3bRmMYhaCu0dWJklH9KdZ8LbYODbjYdy0cxJX3gnsICpQXoTo3l6Z
         exrO4ocGRpSHfFKklGpBaFtxAfzzYO7Cy126ycMYbnlf9NZxJqBzr4wsYOz+eSJRjZMN
         gYWnyvx0ndJGN2YZi64Kx3MbLekjgFNxjDPjoVhN7YxYNSxHFPZdb8Ad0UpzKbKoUpvI
         FvRy3W/O+91M9mahdkrJ1Hiwy+DkQRXlbSl/vmnjOhr+3hrEDEaTmej08RaMUoKdZJ5Y
         DTJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qOY73Q7BbgfdaIQ3ffIAohaCifBLm4+p62T4reMHjbk=;
        b=So3ndk5+N29gEfV6Yps3fcS2hF4vy/KzXE2wnOYlgjVcOzdpjlu9GVw2ZwjN7GFcck
         O5onNG6xHqOPRRGyN3wA7wfZVJ85FSxlAgLAZSc49TQTeHghj/enGlmGQ5QJsWScXVMn
         Q49mc5NbgbzEGKofKDG6imd5uVeeLhld4W0EEG7BFdixDfPY0699YR4vokpxpv8QLgxh
         fc9IDAkTiKcIKexNMi/86k7opeCyvvmQ4P3noho9w5S+TULrfpj2P+SDze8K3HVTLH/j
         jLbqJ+hhGmosR5kqlpaZUN9wfwXK7ToPaqebqsr/51fwkzL7gQ7BikZg2r40KM9l3AYY
         nrkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532x65epk8Pj1ULAzoXFlSHoYB8jlPEJk0E5joNaaVw4PXFcO6vU
	s13SMWysIomB+oddW5aoMX4=
X-Google-Smtp-Source: ABdhPJxC4ESk9FpL9i2hxdOC2AsDi48ne9ZjWZD6hY/bNUjpWaZo07s+xpNqfbVPR9zvbpIKXwabqg==
X-Received: by 2002:a17:902:aa86:b029:116:3e3a:2051 with SMTP id d6-20020a170902aa86b02901163e3a2051mr5792962plr.38.1630022128752;
        Thu, 26 Aug 2021 16:55:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:848e:: with SMTP id c14ls3954627plo.1.gmail; Thu, 26
 Aug 2021 16:55:28 -0700 (PDT)
X-Received: by 2002:a17:903:18f:b0:130:2a02:1c9a with SMTP id z15-20020a170903018f00b001302a021c9amr5709514plg.78.1630022128190;
        Thu, 26 Aug 2021 16:55:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630022128; cv=none;
        d=google.com; s=arc-20160816;
        b=cs0JFmr0v1ck4nvRNYy1R7UczRX4u8NL5Mg4CYJMiOzOvR6/Qjb6+zhIuqsytp6bxK
         3BjaCCYYG2555jlz9u9gXhSbAieDoHGxyCk1fYe0UQ51yxc2t3E2NRY7aH4kLbZjuY7U
         xmwWR+l9oHifvxkeXFrwSIXQUlOAaLmDK1P6ZiOQ7Hp0O4aWIlHh5JsJDm/NfTdHuLDE
         m5P4YFYlyRrrMkyHPVFl4ir9+TI5IFzy36I5JZ3m0TgALJRz1QB/p9fS700TMmMetnTB
         fcBWXYGmE/zDnLBhMa56SDx7ZOKD2fvOC878mm14QANLnQVb4j2fOKbMpLtnUuOPnuoe
         a+5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XGuJIltkKMUrnv2x7p0QesYpatHgENHwG8KWRhQBwnw=;
        b=STFuyrcco15AJIcIJrPSg6uS/yF9a+5vhbg2tEg2DFBK2v3Omnn1BvuORDTd1+votc
         pDfv15kx6nMuuhFSqLdFmA3wIYlhSq1Kig4jXRi2A1PyMaL4jEomI6Sctge2K/c+CJLa
         lmZC+PohL/X7KIHbUDN/aPHtG6HeBlggIZEv1xyKRyUZ7iLOBKiuKNdL3xyxLgpG5bHv
         4U1ZluQ7QnL/2cTHAnhmuwiXKah+fN8JJNa7IxYvFuXmOxjjXvjafnFFvPoZg3wIiF27
         ZsKKa1try3NMG579TlSBX1Mphec2CA/0U0D0GfgHVeiU0kNcrSvA+B/33qsrZWjM/xgd
         v2ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Gm0N+2Nw;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k4si336613pjt.3.2021.08.26.16.55.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Aug 2021 16:55:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 726FB60F25;
	Thu, 26 Aug 2021 23:55:27 +0000 (UTC)
Date: Thu, 26 Aug 2021 16:55:24 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: llvm@lists.linux.dev, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2 2/2] powerpc/bug: Provide better flexibility to
 WARN_ON/__WARN_FLAGS() with asm goto
Message-ID: <YSgp7HNGXbzrfvFq@Ryzen-9-3900X.localdomain>
References: <b286e07fb771a664b631cd07a40b09c06f26e64b.1618331881.git.christophe.leroy@csgroup.eu>
 <389962b1b702e3c78d169e59bcfac56282889173.1618331882.git.christophe.leroy@csgroup.eu>
 <YSa1O4fcX1nNKqN/@Ryzen-9-3900X.localdomain>
 <87h7fcc2m4.fsf@mpe.ellerman.id.au>
 <YSfjWfGbZbpYBn+w@Ryzen-9-3900X.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YSfjWfGbZbpYBn+w@Ryzen-9-3900X.localdomain>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Gm0N+2Nw;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Aug 26, 2021 at 11:54:17AM -0700, Nathan Chancellor wrote:
> On Thu, Aug 26, 2021 at 01:21:39PM +1000, Michael Ellerman wrote:
> > Nathan Chancellor <nathan@kernel.org> writes:
> > > On Tue, Apr 13, 2021 at 04:38:10PM +0000, Christophe Leroy wrote:
> > >> Using asm goto in __WARN_FLAGS() and WARN_ON() allows more
> > >> flexibility to GCC.
> > ...
> > >
> > > This patch as commit 1e688dd2a3d6 ("powerpc/bug: Provide better
> > > flexibility to WARN_ON/__WARN_FLAGS() with asm goto") cause a WARN_ON in
> > > klist_add_tail to trigger over and over on boot when compiling with
> > > clang:
> > >
> > > [    2.177416][    T1] WARNING: CPU: 0 PID: 1 at lib/klist.c:62 .klist_add_tail+0x3c/0x110
> > > [    2.177456][    T1] Modules linked in:
> > > [    2.177481][    T1] CPU: 0 PID: 1 Comm: swapper/0 Tainted: G        W         5.14.0-rc7-next-20210825 #1
> > > [    2.177520][    T1] NIP:  c0000000007ff81c LR: c00000000090a038 CTR: 0000000000000000
> > > [    2.177557][    T1] REGS: c0000000073c32a0 TRAP: 0700   Tainted: G        W          (5.14.0-rc7-next-20210825)
> > > [    2.177593][    T1] MSR:  8000000002029032 <SF,VEC,EE,ME,IR,DR,RI>  CR: 22000a40  XER: 00000000
> > > [    2.177667][    T1] CFAR: c00000000090a034 IRQMASK: 0
> > > [    2.177667][    T1] GPR00: c00000000090a038 c0000000073c3540 c000000001be3200 0000000000000001
> > > [    2.177667][    T1] GPR04: c0000000072d65c0 0000000000000000 c0000000091ba798 c0000000091bb0a0
> > > [    2.177667][    T1] GPR08: 0000000000000001 0000000000000000 c000000008581918 fffffffffffffc00
> > > [    2.177667][    T1] GPR12: 0000000044000240 c000000001dd0000 c000000000012300 0000000000000000
> > > [    2.177667][    T1] GPR16: 0000000000000000 0000000000000000 0000000000000000 0000000000000000
> > > [    2.177667][    T1] GPR20: 0000000000000000 0000000000000000 0000000000000000 0000000000000000
> > > [    2.177667][    T1] GPR24: 0000000000000000 c0000000017e3200 0000000000000000 c000000001a0e778
> > > [    2.177667][    T1] GPR28: c0000000072d65b0 c0000000072d65a8 c000000007de72c8 c0000000073c35d0
> > > [    2.178019][    T1] NIP [c0000000007ff81c] .klist_add_tail+0x3c/0x110
> > > [    2.178058][    T1] LR [c00000000090a038] .bus_add_driver+0x148/0x290
> > > [    2.178088][    T1] Call Trace:
> > > [    2.178105][    T1] [c0000000073c3540] [c0000000073c35d0] 0xc0000000073c35d0 (unreliable)
> > > [    2.178150][    T1] [c0000000073c35d0] [c00000000090a038] .bus_add_driver+0x148/0x290
> > > [    2.178190][    T1] [c0000000073c3670] [c00000000090fae8] .driver_register+0xb8/0x190
> > > [    2.178234][    T1] [c0000000073c3700] [c000000000be55c0] .__hid_register_driver+0x70/0xd0
> > > [    2.178275][    T1] [c0000000073c37a0] [c00000000116955c] .redragon_driver_init+0x34/0x58
> > > [    2.178314][    T1] [c0000000073c3820] [c000000000011ae0] .do_one_initcall+0x130/0x3b0
> > > [    2.178357][    T1] [c0000000073c3bb0] [c0000000011065e0] .do_initcall_level+0xd8/0x188
> > > [    2.178403][    T1] [c0000000073c3c50] [c0000000011064a8] .do_initcalls+0x7c/0xdc
> > > [    2.178445][    T1] [c0000000073c3ce0] [c000000001106238] .kernel_init_freeable+0x178/0x21c
> > > [    2.178491][    T1] [c0000000073c3d90] [c000000000012334] .kernel_init+0x34/0x220
> > > [    2.178530][    T1] [c0000000073c3e10] [c00000000000cf50] .ret_from_kernel_thread+0x58/0x60
> > > [    2.178569][    T1] Instruction dump:
> > > [    2.178592][    T1] fba10078 7c7d1b78 38600001 fb810070 3b9d0008 fbc10080 7c9e2378 389d0018
> > > [    2.178662][    T1] fb9d0008 fb9d0010 90640000 fbdd0000 <0b1e0000> e87e0018 28230000 41820024
> > > [    2.178728][    T1] ---[ end trace 52ed3431f58f1847 ]---
> > >
> > > Is this a bug with clang or is there something wrong with the patch? The
> > > vmlinux image is available at [1] if you want to inspect it and our QEMU
> > > command and the warning at boot can be viewed at [2]. If there is any
> > > other information I can provide, please let me know.
> > >
> > > [1] https://builds.tuxbuild.com/1xDcmp3Tvno0TTGxDVPedRKIKM2/
> > > [2] https://github.com/ClangBuiltLinux/continuous-integration2/commit/cee159b66a58eb57fa2359e7888074b9da24126c/checks/3422232736/logs
> > 
> > Thanks.
> > 
> > This is the generated assembly:
> > 
> > c0000000007ff600 <.klist_add_tail>:
> > c0000000007ff600:       7c 08 02 a6     mflr    r0
> > c0000000007ff604:       f8 01 00 10     std     r0,16(r1)
> > c0000000007ff608:       f8 21 ff 71     stdu    r1,-144(r1)	^ prolog
> > c0000000007ff60c:       fb a1 00 78     std     r29,120(r1)	save r29 to stack
> > c0000000007ff610:       7c 7d 1b 78     mr      r29,r3		r29 = struct klist_node *n
> > c0000000007ff614:       38 60 00 01     li      r3,1		r3 = 1
> > c0000000007ff618:       fb 81 00 70     std     r28,112(r1)	save r28 to stack
> > c0000000007ff61c:       3b 9d 00 08     addi    r28,r29,8	r28 = &n->n_node
> > c0000000007ff620:       fb c1 00 80     std     r30,128(r1)	save r30 to stack
> > c0000000007ff624:       7c 9e 23 78     mr      r30,r4		r30 = struct klist *k
> > c0000000007ff628:       38 9d 00 18     addi    r4,r29,24	r4 = &n->n_ref
> > c0000000007ff62c:       fb 9d 00 08     std     r28,8(r29)	n->n_node.next = &n->n_node	INIT_LIST_HEAD
> > c0000000007ff630:       fb 9d 00 10     std     r28,16(r29)	n->n_node.prev = &n->n_node
> > c0000000007ff634:       90 64 00 00     stw     r3,0(r4)	kref_init(&n->n_ref)
> > c0000000007ff638:       fb dd 00 00     std     r30,0(r29)	n->n_klist = k
> > c0000000007ff63c:       0b 1e 00 00     tdnei   r30,0		trap if r30 (k) is not zero
> > 
> > 
> > From:
> > 
> > static void knode_set_klist(struct klist_node *knode, struct klist *klist)
> > {
> > 	knode->n_klist = klist;
> > 	/* no knode deserves to start its life dead */
> > 	WARN_ON(knode_dead(knode));
> >                 ^^^^^^^^^^^^^^^^^
> > }
> > 
> > Which expands to:
> > 
> > static void knode_set_klist(struct klist_node *knode, struct klist *klist)
> > {
> > 	knode->n_klist = klist;
> > 
> > 	({
> > 		bool __ret_warn_on = false;
> > 		do {
> >                 ...
> > 			} else {
> > 				__label__ __label_warn_on;
> > 				do {
> > 					asm goto(
> > 						"1:   "
> > 						"tdnei"
> > 						"
> > 						" " % 4,
> > 						0 " "\n " ".section __ex_table,\"a\";"
> > 										" "
> > 										".balign 4;"
> > 										" "
> > 										".long (1b) - . ;"
> > 										" "
> > 										".long (%l[__label_warn_on]) - . ;"
> > 										" "
> > 										".previous"
> > 										" "
> > 										".section __bug_table,\"aw\"\n"
> > 										"2:\t.4byte 1b - 2b, %0 - 2b\n"
> > 										"\t.short %1, %2\n"
> > 										".org 2b+%3\n"
> > 										".previous\n"
> > 						:
> > 						: "i"("lib/klist.c"), "i"(62),
> > 						  "i"((1 << 0) | ((9) << 8)),
> > 						  "i"(sizeof(struct bug_entry)),
> > 						  "r"(knode_dead(knode))
> >                                                   ^^^^^^^^^^^^^^^^^^^^^
> > 
> > 						:
> > 						: __label_warn_on);
> > 					asm("");
> > 				} while (0);
> > 				break;
> > 			__label_warn_on:
> > 				__ret_warn_on = true;
> > 			}
> > 		} while (0);
> > 		__builtin_expect(!!(__ret_warn_on), 0);
> > 	});
> > }
> > 
> > And knode_dead is:
> > 
> > #define KNODE_DEAD		1LU
> > 
> > static bool knode_dead(struct klist_node *knode)
> > {
> > 	return (unsigned long)knode->n_klist & KNODE_DEAD;
> > }
> > 
> > 
> > So it's meant to warn if (n_klist & KNODE_DEAD) is not equal to zero.
> > 
> > But in the asm:
> > 
> > c0000000007ff600 <.klist_add_tail>:
> > ...
> > c0000000007ff624:       7c 9e 23 78     mr      r30,r4		r30 = struct klist *k
> > ...
> > c0000000007ff638:       fb dd 00 00     std     r30,0(r29)	n->n_klist = k
> > c0000000007ff63c:       0b 1e 00 00     tdnei   r30,0		trap if r30 (k) is not zero
> > 
> > 
> > It's just warning if n_klist is not equal to zero. ie. we lost the "& KNODE_DEAD".
> > 
> > In the GCC output you can see it:
> > 
> > c0000000008c8a30 <.klist_node_init>:
> > c0000000008c8a30:       39 24 00 08     addi    r9,r4,8
> > c0000000008c8a34:       39 40 00 01     li      r10,1
> > c0000000008c8a38:       f9 24 00 08     std     r9,8(r4)
> > c0000000008c8a3c:       f9 24 00 10     std     r9,16(r4)
> > c0000000008c8a40:       91 44 00 18     stw     r10,24(r4)
> > c0000000008c8a44:       f8 64 00 00     std     r3,0(r4)
> > c0000000008c8a48:       54 69 07 fe     clrlwi  r9,r3,31
> > c0000000008c8a4c:       0b 09 00 00     tdnei   r9,0
> > 
> > ie. the clrlwi is "clear left (word) immediate", and zeroes everything
> > except bit 0, which is equivalent to "& KNODE_DEAD".
> > 
> > 
> > So there seems to be some misunderstanding with clang, it doesn't like
> > us passing an expression to the inline asm.
> > 
> > AFAIK it is legal to pass expressions as inputs to inline asm, ie. it
> > doesn't have to just be a variable name.
> > 
> > This patch seems to fix it. Not sure if that's just papering over it though.
> > 
> > diff --git a/arch/powerpc/include/asm/bug.h b/arch/powerpc/include/asm/bug.h
> > index 1ee0f22313ee..75fcb4370d96 100644
> > --- a/arch/powerpc/include/asm/bug.h
> > +++ b/arch/powerpc/include/asm/bug.h
> > @@ -119,7 +119,7 @@ __label_warn_on:						\
> >  								\
> >  			WARN_ENTRY(PPC_TLNEI " %4, 0",		\
> >  				   BUGFLAG_WARNING | BUGFLAG_TAINT(TAINT_WARN),	\
> > -				   __label_warn_on, "r" (x));	\
> > +				   __label_warn_on, "r" (!!(x))); \
> >  			break;					\
> >  __label_warn_on:						\
> >  			__ret_warn_on = true;			\
> > 
> > 
> > Generates:
> > 
> > c0000000008e2ac0 <.klist_add_tail>:
> > c0000000008e2ac0:       7c 08 02 a6     mflr    r0
> > c0000000008e2ac4:       f8 01 00 10     std     r0,16(r1)
> > c0000000008e2ac8:       f8 21 ff 71     stdu    r1,-144(r1)
> > c0000000008e2acc:       fb a1 00 78     std     r29,120(r1)
> > c0000000008e2ad0:       7c 7d 1b 78     mr      r29,r3
> > c0000000008e2ad4:       38 60 00 01     li      r3,1
> > c0000000008e2ad8:       fb c1 00 80     std     r30,128(r1)
> > c0000000008e2adc:       7c 9e 23 78     mr      r30,r4
> > c0000000008e2ae0:       38 9d 00 18     addi    r4,r29,24
> > c0000000008e2ae4:       57 c5 07 fe     clrlwi  r5,r30,31	<-
> > c0000000008e2ae8:       fb 81 00 70     std     r28,112(r1)
> > c0000000008e2aec:       3b 9d 00 08     addi    r28,r29,8
> > c0000000008e2af0:       fb 9d 00 08     std     r28,8(r29)
> > c0000000008e2af4:       fb 9d 00 10     std     r28,16(r29)
> > c0000000008e2af8:       90 64 00 00     stw     r3,0(r4)
> > c0000000008e2afc:       fb dd 00 00     std     r30,0(r29)
> > c0000000008e2b00:       0b 05 00 00     tdnei   r5,0		<-
> 
> Thank you for the in-depth explanation and triage! I have gone ahead and
> created a standalone reproducer that shows this based on the
> preprocessed file and opened https://bugs.llvm.org/show_bug.cgi?id=51634
> so the LLVM developers can take a look.

Based on Eli Friedman's comment in the bug, would something like this
work and not regress GCC? I noticed that the BUG_ON macro does a cast as
well. Nick pointed out to me privately that we have run into what seems
like a similar issue before in commit 6c58f25e6938 ("riscv/atomic: Fix
sign extension for RV64I").

Cheers,
Nathan

diff --git a/arch/powerpc/include/asm/bug.h b/arch/powerpc/include/asm/bug.h
index 1ee0f22313ee..35022667f57d 100644
--- a/arch/powerpc/include/asm/bug.h
+++ b/arch/powerpc/include/asm/bug.h
@@ -119,7 +119,7 @@ __label_warn_on:                                            \
                                                                \
                        WARN_ENTRY(PPC_TLNEI " %4, 0",          \
                                   BUGFLAG_WARNING | BUGFLAG_TAINT(TAINT_WARN), \
-                                  __label_warn_on, "r" (x));   \
+                                  __label_warn_on, "r" ((__force long)(x)));   \
                        break;                                  \
 __label_warn_on:                                               \
                        __ret_warn_on = true;                   \

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YSgp7HNGXbzrfvFq%40Ryzen-9-3900X.localdomain.
