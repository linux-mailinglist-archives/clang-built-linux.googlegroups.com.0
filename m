Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDN23TVQKGQEADCM66I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2BDAE29D
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 05:48:29 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id f5sf9375694edr.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Sep 2019 20:48:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568087309; cv=pass;
        d=google.com; s=arc-20160816;
        b=CKxbd49vDjXripy/NmuZnIlfLgD/dN4i8XXj0QIW0Z6bfNimuZU/gKEwzSoRv16Mb9
         IAbinsCvGgdp3jyqOmDuwQIJ7OgEwggMktPi0ymqkM/1I0k777qAY5kaxfrQfFa+v4Mq
         n/0nYry9NH1HxSpFEHmNVVE05adBNcEa2FCODvG2L5OtKm/9v65phvnjT8SJMtAk0863
         p4sEd4b0KuqMybmz+fVRVdfKa84heuDezAoyzoub+bvMLIqNK1R0+3TCYWk9atoq4yFa
         EfzfWm4RJrTfedxDJmx5u5NBVTVbh54atSQ/sToqRHcO/U+mDobsA1ShIsv8cwzNDv1M
         xszg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=FX6+K66eYPicNsHbPaNRSRv5R2CnvaUaTcd7lJ21EoI=;
        b=hvv4NvYAznYkipO3nNTOwgIgjvm6GRp6q807vzJllJ5k0VcRByRHBIDUJrylxsFLLr
         OdGyA7KVGZeD0vcys4tUad1qHW/Fx3O0nvuMN3EZ7Jg2+Mv9sNWvep3ua2phJtl/336e
         W+gOu/ZZreoCqApHxeEGQw8cpmI7zSyV/AkPyjMCm4tYQwLFNWx27f3VB/31o/KGwGBc
         z9E+RJ2U4HhLu73j61z5AN6LZS7qa3lenhmOe4fPqGn16GTdGKRJxzCudea5t6DfOxSV
         EQ/6JRwoLB9uTBUpP7Vz4WOfX27NfESJrrLVes/En/XLe0BdCrj7YzQ/1Rk+hVMGvZMj
         LYiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XVWITTuB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FX6+K66eYPicNsHbPaNRSRv5R2CnvaUaTcd7lJ21EoI=;
        b=YIUs2O0A6Cn6n66XcTcPIx1HjlJvR2cxij8U99jnlzBU25G01LhEtVYSdTBJnU8Y3F
         NcMDeAmAt7Jkw/GCPODPFY7e4JpD2vvvzBMhvDOkY0QL1yL/7t5jtTLThmS52LNvE+gl
         oM9vVySEWqahNndWuRidHoHZRh1HGBEa/4u3i9/2BjAEerwsktdd3tW3risrE+YcOh3h
         OE1LYw6l/a+Qebdo7u3digIg8egcs8CG4/i0OvFNY1Pgq5nsZi3jqhc3DPBnf/wO0u0G
         44SgCrCmv5TZNLy1Bheoa9a7c6qGmsXJfN2jLbzsmISlreIJWD8C6kYwYqLR5Nv7ZLIQ
         v3xA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FX6+K66eYPicNsHbPaNRSRv5R2CnvaUaTcd7lJ21EoI=;
        b=OLZCAiR9L3AzNfytiO8qIxkqsxjpf94msjiCaYn8BP/eOAUY1p2SsQ6wTHggrNwNRn
         Y9SLdcuOdD1L8cxbTt9eWFOTYXq/AuULI9clCAPkWGfwAlJ1EeWRCa+QYZ45mb/ZKQ5y
         TVgymUgEtwch80QTveOxjL64TqbZrcej7KtqXUYbu+skCtTP7JDYzoTdv4W8S6s5uT6T
         nnRcx7t/X7fy+WsXvsYyXlNNkNLB1hTMHaOw6JweaQhghHIZ9zejODwsheTG7jWCAvWz
         OWAFY2poFeIwic9dFesK7zo6+BVMCkIFtoJeKeR5AcGonaZeB5zeEOouNI2B6RtuM9cR
         FSxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FX6+K66eYPicNsHbPaNRSRv5R2CnvaUaTcd7lJ21EoI=;
        b=szOXgVYJdGPxd6tD2FvABzS02bWxgb320Sgi32Eh09BwaJL8UU9yoRVKMAZWRnRnOk
         JAMH3M84OapfUxVTAsIOX88JtZBrqI+DPWWQBrWAjR/hOELwAAe2mW1cA6YCfO1Q3sr/
         Zp5MTl21n2j5po5L0hYX264X/p0yJYahDlIUiYRIqZqiFNUglxr1Q4fDd2JMVZYM+aZq
         ksunggZrxHsReSagEg8cOfMq3Y18f5rOV3i/edFLE8LZHq9uvWG3FK0ZwwrSN5EKihfk
         isnpR08NZd/PRmCujhk9R2Hl83uiPCaakZMKgQ3eY3zy1wbSlGIY4rXNNiG+ygB9PeRI
         eVTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWulTulCGIgHzgAmN4FwVHqNsfre4zL7DnddA0GZOhwYxFqwV2s
	bIynSDS+yRFgwcQY3Wukjrk=
X-Google-Smtp-Source: APXvYqwHLXU9Lf65YCipStPczSzefBIgV7NhynfCQJGmTom1T5DH8doKLNoe3UClfPXt7qYLa7mRHw==
X-Received: by 2002:a50:9512:: with SMTP id u18mr27667342eda.182.1568087309421;
        Mon, 09 Sep 2019 20:48:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:e604:: with SMTP id y4ls4124551edm.16.gmail; Mon, 09 Sep
 2019 20:48:29 -0700 (PDT)
X-Received: by 2002:aa7:dc56:: with SMTP id g22mr28267554edu.212.1568087309049;
        Mon, 09 Sep 2019 20:48:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568087309; cv=none;
        d=google.com; s=arc-20160816;
        b=amkKpwgJoi5QbHeRoAswKP4nCfMORiaOmhhFAnVm/lzdibKc1QgvpOZAa+hJUDgJU7
         RcKf+sVxXZF8sPbYZSUe49eZp48o4/+0z7OxFT3wHdWElNkMtOpK+iHqyil1gbEAr9xp
         SfmSY4MegK2BKhqZ4FTA868vLZYI5OnJ9+kkt1hfesScVEqdwxo43RDehM7PkNkY8Un3
         ssHDMBra93clK1e+6Sb/VIZHygDXMz6kYrfpurBnHilfwOE/y9hF5x7DBZMYXPYjWCmv
         k6es5H1QmvF/q0GpFJtP526JgCHRxSJ317i3hNpao0SSsxSbIN55svMo8WFqu8F1dRRI
         zC/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=I93CMELHaBMh9/kbXreWDxCI9NIXAgfzoQ2tSdfrwbA=;
        b=GjtStQaG7sXy+moR7rg2CNBMZ4NImZYjyIrTLEGXvb/jIDDAKDOAI22tM9RCOjXwDH
         QoTre+q6nqi2/mozAxAvt+tGYEulZDKZIzWHw+DVMzYsm5hmmjnwRXg3r7CrQywvtBTM
         3c4QTdgD7PhdmMvN1N6xihw7MyD+QEIsiglTFfq5Vmof6XSuwrjA1OKSs9/9Mlyq3rh1
         8vvV6nL2aK4eyxjiqUR2l1NehljSR7QDwdRVDKO8MJg7sUn7PQALf12XDZ8DJjVyDv8D
         4yZB1AVaPySmZX0AMEptygW9qFLMb6kSKfSr4Zsn95NI+LW+XVT7ln04ilTD7c5MXBZF
         yO+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XVWITTuB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id ch16si1176552ejb.1.2019.09.09.20.48.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Sep 2019 20:48:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id l11so17052998wrx.5
        for <clang-built-linux@googlegroups.com>; Mon, 09 Sep 2019 20:48:29 -0700 (PDT)
X-Received: by 2002:adf:dd4d:: with SMTP id u13mr2930442wrm.112.1568087308617;
        Mon, 09 Sep 2019 20:48:28 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id q14sm35082227wrc.77.2019.09.09.20.48.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2019 20:48:27 -0700 (PDT)
Date: Mon, 9 Sep 2019 20:48:26 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Laurence Oberman <loberman@redhat.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH] bnx2fc: Handle scope bits when array returns BUSY or
 TASK_SET_FULL
Message-ID: <20190910034826.GA1778@archlinux-threadripper>
References: <201909072040.Dov1yjF6%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201909072040.Dov1yjF6%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XVWITTuB;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Laurence,

The 0day team has been doing clang builds for us and this warning came
up; it appears to be legitimate. Let me know if you have any questions!

On Sat, Sep 07, 2019 at 08:59:34PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> In-Reply-To: <1567801579-18674-1-git-send-email-loberman@redhat.com>
> References: <1567801579-18674-1-git-send-email-loberman@redhat.com>
> TO: Laurence Oberman <loberman@redhat.com>
> CC: loberman@redhat.com, QLogic-Storage-Upstream@qlogic.com, linux-scsi@vger.kernel.org
> CC: 
> 
> Hi Laurence,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on linus/master]
> [cannot apply to v5.3-rc7 next-20190904]
> [if your patch is applied to the wrong git tree, please drop us a note to help improve the system]
> 
> url:    https://github.com/0day-ci/linux/commits/Laurence-Oberman/bnx2fc-Handle-scope-bits-when-array-returns-BUSY-or-TASK_SET_FULL/20190907-134720
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/scsi/bnx2fc/bnx2fc_io.c:2007:9: warning: variable 'scope' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>                                    if (fcp_rsp->retry_delay_timer) {
>                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/scsi/bnx2fc/bnx2fc_io.c:2015:9: note: uninitialized use occurs here
>                                    if (scope > 0 && qualifier > 0 &&
>                                        ^~~~~
>    drivers/scsi/bnx2fc/bnx2fc_io.c:2007:5: note: remove the 'if' if its condition is always true
>                                    if (fcp_rsp->retry_delay_timer) {
>                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/scsi/bnx2fc/bnx2fc_io.c:1931:11: note: initialize the variable 'scope' to silence this warning
>            u16 scope, qualifier = 0;
>                     ^
>                      = 0
>    1 warning generated.
> 
> vim +2007 drivers/scsi/bnx2fc/bnx2fc_io.c
> 
>   1922	
>   1923	void bnx2fc_process_scsi_cmd_compl(struct bnx2fc_cmd *io_req,
>   1924					   struct fcoe_task_ctx_entry *task,
>   1925					   u8 num_rq)
>   1926	{
>   1927		struct fcoe_fcp_rsp_payload *fcp_rsp;
>   1928		struct bnx2fc_rport *tgt = io_req->tgt;
>   1929		struct scsi_cmnd *sc_cmd;
>   1930		struct Scsi_Host *host;
>   1931		u16 scope, qualifier = 0;
>   1932	
>   1933	
>   1934		/* scsi_cmd_cmpl is called with tgt lock held */
>   1935	
>   1936		if (test_and_set_bit(BNX2FC_FLAG_IO_COMPL, &io_req->req_flags)) {
>   1937			/* we will not receive ABTS response for this IO */
>   1938			BNX2FC_IO_DBG(io_req, "Timer context finished processing "
>   1939				   "this scsi cmd\n");
>   1940			return;
>   1941		}
>   1942	
>   1943		/* Cancel the timeout_work, as we received IO completion */
>   1944		if (cancel_delayed_work(&io_req->timeout_work))
>   1945			kref_put(&io_req->refcount,
>   1946				 bnx2fc_cmd_release); /* drop timer hold */
>   1947	
>   1948		sc_cmd = io_req->sc_cmd;
>   1949		if (sc_cmd == NULL) {
>   1950			printk(KERN_ERR PFX "scsi_cmd_compl - sc_cmd is NULL\n");
>   1951			return;
>   1952		}
>   1953	
>   1954		/* Fetch fcp_rsp from task context and perform cmd completion */
>   1955		fcp_rsp = (struct fcoe_fcp_rsp_payload *)
>   1956			   &(task->rxwr_only.union_ctx.comp_info.fcp_rsp.payload);
>   1957	
>   1958		/* parse fcp_rsp and obtain sense data from RQ if available */
>   1959		bnx2fc_parse_fcp_rsp(io_req, fcp_rsp, num_rq);
>   1960	
>   1961		host = sc_cmd->device->host;
>   1962		if (!sc_cmd->SCp.ptr) {
>   1963			printk(KERN_ERR PFX "SCp.ptr is NULL\n");
>   1964			return;
>   1965		}
>   1966	
>   1967		if (io_req->on_active_queue) {
>   1968			list_del_init(&io_req->link);
>   1969			io_req->on_active_queue = 0;
>   1970			/* Move IO req to retire queue */
>   1971			list_add_tail(&io_req->link, &tgt->io_retire_queue);
>   1972		} else {
>   1973			/* This should not happen, but could have been pulled
>   1974			 * by bnx2fc_flush_active_ios(), or during a race
>   1975			 * between command abort and (late) completion.
>   1976			 */
>   1977			BNX2FC_IO_DBG(io_req, "xid not on active_cmd_queue\n");
>   1978			if (io_req->wait_for_abts_comp)
>   1979				if (test_and_clear_bit(BNX2FC_FLAG_EH_ABORT,
>   1980						       &io_req->req_flags))
>   1981					complete(&io_req->abts_done);
>   1982		}
>   1983	
>   1984		bnx2fc_unmap_sg_list(io_req);
>   1985		io_req->sc_cmd = NULL;
>   1986	
>   1987		switch (io_req->fcp_status) {
>   1988		case FC_GOOD:
>   1989			if (io_req->cdb_status == 0) {
>   1990				/* Good IO completion */
>   1991				sc_cmd->result = DID_OK << 16;
>   1992			} else {
>   1993				/* Transport status is good, SCSI status not good */
>   1994				BNX2FC_IO_DBG(io_req, "scsi_cmpl: cdb_status = %d"
>   1995					 " fcp_resid = 0x%x\n",
>   1996					io_req->cdb_status, io_req->fcp_resid);
>   1997				sc_cmd->result = (DID_OK << 16) | io_req->cdb_status;
>   1998	
>   1999				if (io_req->cdb_status == SAM_STAT_TASK_SET_FULL ||
>   2000				    io_req->cdb_status == SAM_STAT_BUSY) {
>   2001					/* Newer array firmware with BUSY or
>   2002					 * TASK_SET_FULL may return a status that needs
>   2003					 * the scope bits masked.
>   2004					 * Or a huge delay timestamp up to 27 minutes
>   2005					 * can result.
>   2006					*/
> > 2007					if (fcp_rsp->retry_delay_timer) {
>   2008						/* Upper 2 bits */
>   2009						scope = fcp_rsp->retry_delay_timer
>   2010							& 0xC000;

This is the only initialization of scope and if this if statement never
hits, then...

>   2011						/* Lower 14 bits */
>   2012						qualifier = fcp_rsp->retry_delay_timer
>   2013							& 0x3FFF;
>   2014					}
>   2015					if (scope > 0 && qualifier > 0 &&

We use scope uninitialized here.

>   2016						qualifier <= 0x3FEF) {
>   2017					/* Set the jiffies + retry_delay_timer * 100ms
>   2018					   for the rport/tgt */
>   2019						tgt->retry_delay_timestamp = jiffies +
>   2020							(qualifier * HZ / 10);
>   2021					}
>   2022				}
>   2023			}
>   2024			if (io_req->fcp_resid)
>   2025				scsi_set_resid(sc_cmd, io_req->fcp_resid);
>   2026			break;
>   2027		default:
>   2028			printk(KERN_ERR PFX "scsi_cmd_compl: fcp_status = %d\n",
>   2029				io_req->fcp_status);
>   2030			break;
>   2031		}
>   2032		sc_cmd->SCp.ptr = NULL;
>   2033		sc_cmd->scsi_done(sc_cmd);
>   2034		kref_put(&io_req->refcount, bnx2fc_cmd_release);
>   2035	}
>   2036	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910034826.GA1778%40archlinux-threadripper.
