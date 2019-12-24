Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQ7ZRHYAKGQEPLCP7XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE4912A427
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Dec 2019 22:01:57 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id g69sf14570051pfb.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Dec 2019 13:01:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577221316; cv=pass;
        d=google.com; s=arc-20160816;
        b=N5ceUIWSxsC9w0VDf9sGYf5eUxLL2x+GbFQwA4JbSKT0kPcRvu9UwHz6dqYjep2rqH
         lP272Lt6JtPsczwoO2XsQ5Vm7qFqf5wA9MTbf+7ot/aRYIdZm4NAJF/7/40TTy8VKW69
         wcX6hEEoASomekqrWu0s3MpTuX80diE6IjyBwMrR0PbCLIxb+d3BwyWswSkovxu23UFF
         eOhu0m+6CkMbWLi1JvkC25CnVT5M6UO+k7X8ACsX7jMeYCY+PVmurYSPFLNvx6GpqS03
         qKzclhPN1X0/6mRbeZ2IAYql1DsciKRDjUH8jplPY9Z4Cd+CpylpD8Cctdhwk0vG/t9Z
         FYEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=GoFkNUodJ9y920RiuNfhVxThdaC6mFTFJv4KTHn7cAY=;
        b=enWNQ1hNKjFK/dAk1FUxB9NBmxfkDXafEYFaMIj3LZZGcU2r1IaMRgotHt3aN0nJ8+
         6EhiBgH8hzaBWWMlENaUOTiTB9Ije8+Yh5efQk/Ydn8QmuuJRrdueugkTVC4ea0S5S5B
         399F64FRH/bab1VC6JVUL17fUkX59jx3BqpgmMLr4ZLnvbAORJA+f/c/imWxB9xcAOJE
         zB11ms9jo09nVo6xsXc0IeMLStTctSy4GUyLSi+MILp/o5u2fnpb0WLP3PV3v/JQP5YH
         bPxjsTXhYVszPomrLFNqH9D+UYnyF0VDE4jsfAqJKkNH33x9noz0j992W/whvWP/wA7Q
         Lntg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LI0iWWOx;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GoFkNUodJ9y920RiuNfhVxThdaC6mFTFJv4KTHn7cAY=;
        b=nT8827iTG/1ruUh/FoPOuuEAKH8iJML/v1QUh2IsqZwTa+hkvajTXZghlNdWRBF8x3
         gEGdlcdnUhX1iYP29fE0C0X/p2AHfsxFLM0INxAJh884QVWqIl7/o3lnSXX5NE1tw832
         nndwHMdfsZEZKXuiXLkeSdie5MGfrgHGH2wwxB3I6MP4cblvAPsEyPHlMK8eHlUh77DP
         MJpjw7niDOoc6HhFD0qol/RdZLopDq27FM6KDglNKkcgDfMvWnAoOKor9B6nI5cMBFzZ
         5HCPTXaJDYpQO5Wq/+Q68GmAYiU6ZuM40wT7WE1x8Mnf2w4ZadaviDPpwy+WaEA3G4E3
         a2yQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GoFkNUodJ9y920RiuNfhVxThdaC6mFTFJv4KTHn7cAY=;
        b=ACZARIgU69f2kgqzIjcH0VFoj09NIfhX5gUsD4hiUIf3MBg3h1sBGZX1G8DWQd+lgc
         ul1QB5CUhyNE3fs2pE47nhLybFL4WMqBPzwRWPkOxqqLfnm/+8LvmPTg2mvFEd4ioYxf
         WZvo3X0O7eNDSyjeBOOFoJG52TUpeOd64udITeWciIFz8H2Q2pb4ggKZPPH6YmUp6dWW
         bze/j2X3vkwiGfL9nzCYdoZc8pg7ev1k2WQw/rNXibRlIpTBfNnBPls+5hC5V0I+sXRx
         MaCdWx/Bx+uFO+940d2bBOSC5pIpEYlAbfM+UsCFg5v1gYjxyoCs33F2HA75Ivj7zEle
         iPYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GoFkNUodJ9y920RiuNfhVxThdaC6mFTFJv4KTHn7cAY=;
        b=MqqfZSLR61FxgEVFkMlGr+9kMZIYeeL7wvxx62q0YELPStU8/fEhnaLIAxDX/uXgcp
         755Evt8H+WDPZVwibKfpdTpdrVmFgNU50PcRkr2xh3Ekj4jUgArrSoxJMX5GJxiG3p/K
         Jnq0GddLmA5HFXSJdIDo/UKVXhhrfZdohb40MIx9rh68OqCpYYXiP8Yphn7FMB9hCs29
         f03Ro2kbbqgwBTitQAR36Yh6pXiTqMidxuEdFzjqfG/NOrGjlYFuGlEnc6tb+7usJGhM
         JhcQls3MRbbtzzDkQnJXOZeE6Tn8InwHyhg42vcvyzBN9iPMgCdIN2sPM7BWOWl2ogc2
         VyDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWy6GlJ+vrXNxSO1BcCWoDNCupIDriNBGA+Ij5kzxrDcYRtrl8N
	hkz/qDL1lNeWv8h/Tbrepc0=
X-Google-Smtp-Source: APXvYqyTU2Cohxge/lIqB8ftXVsGLdD+o+XP1UHCXB2Hn/23Wxs45DYJ7A4xP22+KjESgR0qWodh5A==
X-Received: by 2002:a62:14c4:: with SMTP id 187mr38244962pfu.96.1577221315804;
        Tue, 24 Dec 2019 13:01:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:84d9:: with SMTP id x25ls5686262pfn.2.gmail; Tue, 24 Dec
 2019 13:01:55 -0800 (PST)
X-Received: by 2002:aa7:9290:: with SMTP id j16mr6641155pfa.30.1577221315436;
        Tue, 24 Dec 2019 13:01:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577221315; cv=none;
        d=google.com; s=arc-20160816;
        b=gDtxZqrxfpx5WfXpPXIDz3mzstNPBMD4FRcueTDLT/JmOOf69ni/t4WmL4TDXtC8G7
         z+GArnDg3H/e85X7QHBJyYbtPDjayQdkHrpGJZ0LEiOaAqVY4Qfnv0X1rAehiCaBzfmb
         9nwbNukiftfRzsjvyleyugbil1h/Hst2gGJOOhX+J8RtGuzUNMfccYw3RG341m38XBXe
         U0/kwQwGP0wg7V7Zvl37WryBsIobsSOYabcr6kEiDPPFYykkyBWQF7JAVxrmWLUkoMMd
         uMYhHyKYF0OFD3e4q50VvSJJdRlosOkdnLPdNfWOMOz+hRwHsw1ahs2AvI/D4KcTq6rw
         zvEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jD1vnhyvrCKokVq1oqjGePFro71sw9tabHYUcYzNkIc=;
        b=WE9W765K9fITmxZ9dBZ7YvZ1M792BKduBWC4bnkzlPb1OdMExzFgv2po4MEjhRfpDC
         zdKF2ba+tgLLk+4lohboNphhvi0bbs/lBvbt2xdpdvlu8/ucDQbodiqV4TTNH1P7hfv8
         9cXxNBHyCzZWvGChcQ5iwgrlEdMfrg0p1Fa/3r1w3wCxPRRwO27pGMo8nkbENrTwSKvS
         sFLpUTBS34WGHOwK68OOEnA78mRhzEEVsEVCl1OcdWNEs1cc4FWepteWyJEa+uqeQ6Dy
         /ZswV6aeU3LuTz5tViYDcFbxzRLFNvO7vPaYY13vSJ6+xWIHF1OtqHjTDS49DCc/aV5+
         LfTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LI0iWWOx;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id b192si1055977pga.5.2019.12.24.13.01.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Dec 2019 13:01:55 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id w21so19710362otj.7
        for <clang-built-linux@googlegroups.com>; Tue, 24 Dec 2019 13:01:55 -0800 (PST)
X-Received: by 2002:a05:6830:1607:: with SMTP id g7mr40758956otr.320.1577221314552;
        Tue, 24 Dec 2019 13:01:54 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id k26sm2767628oiw.34.2019.12.24.13.01.53
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 24 Dec 2019 13:01:53 -0800 (PST)
Date: Tue, 24 Dec 2019 14:01:51 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: James Smart <jsmart2021@gmail.com>
Cc: linux-scsi@vger.kernel.org, maier@linux.ibm.com, dwagner@suse.de,
	bvanassche@acm.org, Ram Vegesna <ram.vegesna@broadcom.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 32/32] elx: efct: Tie into kernel Kconfig and build
 process
Message-ID: <20191224210151.GA19657@ubuntu-m2-xlarge-x86>
References: <20191220223723.26563-1-jsmart2021@gmail.com>
 <20191220223723.26563-33-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191220223723.26563-33-jsmart2021@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LI0iWWOx;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Dec 20, 2019 at 02:37:23PM -0800, James Smart wrote:
> This final patch ties the efct driver into the kernel Kconfig
> and build linkages in the drivers/scsi directory.
> 
> Signed-off-by: Ram Vegesna <ram.vegesna@broadcom.com>
> Signed-off-by: James Smart <jsmart2021@gmail.com>

Hi James,

The 0day bot reported a few new clang warnings with this series. Would
you mind fixing them in the next version? I've attached how I would
resolve them inline, feel free to use them or fix the warnings in a
different way.


On Wed, Dec 25, 2019 at 04:31:56AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20191220223723.26563-33-jsmart2021@gmail.com>
> References: <20191220223723.26563-33-jsmart2021@gmail.com>
> TO: James Smart <jsmart2021@gmail.com>
> CC: linux-scsi@vger.kernel.org
> CC: maier@linux.ibm.com, dwagner@suse.de, bvanassche@acm.org, James Smart <jsmart2021@gmail.com>, Ram Vegesna <ram.vegesna@broadcom.com>
> 
> Hi James,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on mkp-scsi/for-next]
> [also build test WARNING on scsi/for-next linus/master v5.5-rc3 next-20191219]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/James-Smart/efct-Broadcom-Emulex-FC-Target-driver/20191224-054519
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git for-next
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project e5a743c4f6e3639ba3bee778c894a996ef96391a)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/scsi/elx/efct/efct_els.c:1736:32: warning: implicit conversion from enumeration type 'enum efct_els_role' to different enumeration type 'enum efct_scsi_io_role' [-Wenum-conversion]
>            io = efct_scsi_io_alloc(node, EFCT_ELS_ROLE_RESPONDER);
>                 ~~~~~~~~~~~~~~~~~~       ^~~~~~~~~~~~~~~~~~~~~~~
>    1 warning generated.


diff --git a/drivers/scsi/elx/efct/efct_els.c b/drivers/scsi/elx/efct/efct_els.c
index 9c964302505b..10e60128a527 100644
--- a/drivers/scsi/elx/efct/efct_els.c
+++ b/drivers/scsi/elx/efct/efct_els.c
@@ -1733,7 +1733,7 @@ efct_bls_send_acc_hdr(struct efc *efc, struct efc_node *node,
 	u16 rx_id = be16_to_cpu(hdr->fh_rx_id);
 	u32 d_id = ntoh24(hdr->fh_d_id);
 
-	io = efct_scsi_io_alloc(node, EFCT_ELS_ROLE_RESPONDER);
+	io = efct_scsi_io_alloc(node, EFCT_SCSI_IO_ROLE_RESPONDER);
 	if (!io) {
 		efc_log_err(efc, "els IO alloc failed\n");
 		return io;

> >> drivers/scsi/elx/efct/efct_hw.c:5270:6: warning: logical not is only applied to the left hand side of this comparison [-Wlogical-not-parentheses]
>            if (!sli_cmd_common_nop(&hw->sli, ctx->cmd,
>                ^
>    drivers/scsi/elx/efct/efct_hw.c:5270:6: note: add parentheses after the '!' to evaluate the comparison first
>            if (!sli_cmd_common_nop(&hw->sli, ctx->cmd,
>                ^
>                 (
>    drivers/scsi/elx/efct/efct_hw.c:5270:6: note: add parentheses around left hand side expression to silence this warning
>            if (!sli_cmd_common_nop(&hw->sli, ctx->cmd,
>                ^
>                (
>    drivers/scsi/elx/efct/efct_hw.c:5619:6: warning: logical not is only applied to the left hand side of this comparison [-Wlogical-not-parentheses]
>            if (!sli_cmd_reg_vpi(&hw->sli, data, SLI4_BMBX_SIZE,
>                ^
>    drivers/scsi/elx/efct/efct_hw.c:5619:6: note: add parentheses after the '!' to evaluate the comparison first
>            if (!sli_cmd_reg_vpi(&hw->sli, data, SLI4_BMBX_SIZE,
>                ^
>                 (
>    drivers/scsi/elx/efct/efct_hw.c:5619:6: note: add parentheses around left hand side expression to silence this warning
>            if (!sli_cmd_reg_vpi(&hw->sli, data, SLI4_BMBX_SIZE,
>                ^
>                (
>    drivers/scsi/elx/efct/efct_hw.c:5962:6: warning: logical not is only applied to the left hand side of this comparison [-Wlogical-not-parentheses]
>            if (!sli_cmd_reg_vfi(&hw->sli, data, SLI4_BMBX_SIZE,
>                ^
>    drivers/scsi/elx/efct/efct_hw.c:5962:6: note: add parentheses after the '!' to evaluate the comparison first
>            if (!sli_cmd_reg_vfi(&hw->sli, data, SLI4_BMBX_SIZE,
>                ^
>                 (
>    drivers/scsi/elx/efct/efct_hw.c:5962:6: note: add parentheses around left hand side expression to silence this warning
>            if (!sli_cmd_reg_vfi(&hw->sli, data, SLI4_BMBX_SIZE,
>                ^
>                (
>    3 warnings generated.

diff --git a/drivers/scsi/elx/efct/efct_hw.c b/drivers/scsi/elx/efct/efct_hw.c
index 23d55d0d26c3..8428c7ff9d72 100644
--- a/drivers/scsi/elx/efct/efct_hw.c
+++ b/drivers/scsi/elx/efct/efct_hw.c
@@ -5267,8 +5267,8 @@ efct_hw_async_call(struct efct_hw *hw,
 	ctx->arg = arg;
 
 	/* Build and send a NOP mailbox command */
-	if (!sli_cmd_common_nop(&hw->sli, ctx->cmd,
-			       sizeof(ctx->cmd), 0) == 0) {
+	if (sli_cmd_common_nop(&hw->sli, ctx->cmd,
+			       sizeof(ctx->cmd), 0)) {
 		efc_log_err(hw->os, "COMMON_NOP format failure\n");
 		kfree(ctx);
 		rc = -1;
@@ -5616,10 +5616,10 @@ efct_hw_port_attach_reg_vpi(struct efc_sli_port *sport, void *data)
 	struct efct_hw *hw = sport->hw;
 	int rc;
 
-	if (!sli_cmd_reg_vpi(&hw->sli, data, SLI4_BMBX_SIZE,
+	if (sli_cmd_reg_vpi(&hw->sli, data, SLI4_BMBX_SIZE,
 			    sport->fc_id, sport->sli_wwpn,
 			sport->indicator, sport->domain->indicator,
-			false) == 0) {
+			false)) {
 		efc_log_err(hw->os, "REG_VPI format failure\n");
 		efct_hw_port_free_resources(sport,
 					    EFC_HW_PORT_ATTACH_FAIL, data);
@@ -5959,11 +5959,11 @@ efct_hw_domain_attach_reg_vfi(struct efc_domain *domain, void *data)
 	struct efct_hw *hw = domain->hw;
 	int rc;
 
-	if (!sli_cmd_reg_vfi(&hw->sli, data, SLI4_BMBX_SIZE,
+	if (sli_cmd_reg_vfi(&hw->sli, data, SLI4_BMBX_SIZE,
 			    domain->indicator, domain->fcf_indicator,
 			domain->dma, domain->sport->indicator,
 			domain->sport->sli_wwpn,
-			domain->sport->fc_id) == 0) {
+			domain->sport->fc_id)) {
 		efc_log_err(hw->os, "REG_VFI format failure\n");
 		goto cleanup;
 	}

> >> drivers/scsi/elx/libefc_sli/sli4.c:202:6: warning: variable 'ver' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>            if (sli4->if_type == SLI4_INTF_IF_TYPE_6)
>                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/scsi/elx/libefc_sli/sli4.c:206:5: note: uninitialized use occurs here
>                             ver, CFG_RQST_PYLD_LEN(cmn_create_eq));
>                             ^~~
>    drivers/scsi/elx/libefc_sli/sli4.c:202:2: note: remove the 'if' if its condition is always true
>            if (sli4->if_type == SLI4_INTF_IF_TYPE_6)
>            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/scsi/elx/libefc_sli/sli4.c:195:24: note: initialize the variable 'ver' to silence this warning
>            u32 dw6_flags = 0, ver;
>                                  ^
>                                   = 0
>    1 warning generated.

Presumably, ver should be initialized to either CMD_V0 or CMD_V1 but I
cannot tell.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191224210151.GA19657%40ubuntu-m2-xlarge-x86.
