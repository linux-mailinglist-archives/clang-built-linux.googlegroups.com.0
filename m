Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBJVYS77QKGQEFJINO6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2572E2B7E
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Dec 2020 13:33:43 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id a19sf2923517lfd.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Dec 2020 04:33:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608899623; cv=pass;
        d=google.com; s=arc-20160816;
        b=T0HafwWbL5Fqj1JMWCuSiG76F5aNYO4+jylJT0cxxQ2ICK37qzJRpdDqT+nSMmjiiK
         6cq/f53GAm+J+BdabGHwm+7nC68DhKGtb2wVS7aBn+qWBKKW+bQMigWXA1CVW5wfybkR
         VmzIU2UF7vaUlo/FjrT1uHTk8WCQ1yL6DSVrVOCjJ/14/r441jg+VRSgvNq7gbNeg7rX
         D8oxTccweu68dFSwcj70fIyxRlI9XyhLyXxb4cAjTmahYnmwKSRC6ZN7UpiPGh78ylDZ
         CL32ih3y9hfv5xnYbYsqhV3NAl+nNyVKGXF4xZ91AOhT5/Bvp9Ivk4PCXJBLjTNHU2Ng
         ampg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zfytKi8maryBtmmrIIO42H1+6EXgQcBQHkWWXsHCQ0E=;
        b=TuhkscZa53ujatmq7vEQixzvfbfLe69uqYWYVJD1ERRiiHrOa139DZznCamvDLdY8Q
         xG/YJetY7nAPuQLBGOxTyshfJPaS4J2ZLDqfTKKre3MR+d0lZl31DPlloJ6Ecrj8xgnV
         /PKxDmrL7kCFsV9ngxFKTmWUMSVAXBLR4uCCr04cdfppTxz/AVAGacDGni4gqO+hFJrX
         oYLgYHUrY6dA7WZ1cWJDdZ8FVi7v41Jy7RoJSOuKZ5fSvMqZCf7wgm2YUHclyjwjeYwu
         M2Ag0xIgv/YtlKBJJV8q+WrjHeqBI4usi4V3DFf/LSHxiaLyNDyPJ5t8H+kbhPV4JylW
         iFVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=dc69mcyA;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zfytKi8maryBtmmrIIO42H1+6EXgQcBQHkWWXsHCQ0E=;
        b=UqEif8ONHEF/+YnAg9sJLSc7QFRKoqJZnMVF64v0SgWU8k6OtKyqzdc8Kb0VvTLc9M
         fZ7NpKCc/9p43yGzbTieYfaNCQhSrt9R/+7J3LO4slM9kauAxwDIvMFOWt+N3X7hPMUr
         zh5oh6V6stYl8FPS9E+A6ALn1uaXRL6QhJWlh2WTkzxgNeqtFgDaC4U+B1gF4LVstSHO
         4xNhXLQkzdlz8tzR2pCb4slEl+CDgo1r5FmdZAfOB/6loNukNhIPg4i/+gTM/scVIGI6
         /iHt1Gu1msF1NiF/amj0q8cF13m9MVgQLa1xkolPWtmaLdwfYsPDufdoUla/hm9iobdK
         54KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zfytKi8maryBtmmrIIO42H1+6EXgQcBQHkWWXsHCQ0E=;
        b=CgsVJsDX+VP9DZ2eOR+im4xz538e5k001vSD/K1eK17IGzGZs3aya99g5L7v0531Q+
         sC0X4TI1BV24Lnt71R+8ua3Zn3LHgNujrjKqnKd30UM/fW7FMSayWuUB9r1QmhCmh+/x
         0IorrCGIF7CAA0YWVFuPnI8PYNxDW/H4/uyrI99R+53lbiEHAn8CMO2JCI4rjei73tNz
         NlQUApQXE1IB6vzUHljp5bMwPVLQBOH2qHXEjthM99EqV4P3ZZLphjUZE2Yi7L8lN+u5
         kMHsxpLM3296mPiQGOC9DOsZE1kVS1IPrKdtotXsshGY9JO070By1V7RniOFHEJw4fUI
         bNSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530TNVHuETox1guo4UJeQ+maHJWLKvE3pyq7SYLAWlyhwafTbRRX
	Vfetv4iUQhC0TXgUOAPx5GU=
X-Google-Smtp-Source: ABdhPJzN97w7WbjdXPppEmsULcf3V2W1BtlJxNWw2yqA56whBh6IkTA5Fy2u2D2io6cjwNziy57eoA==
X-Received: by 2002:a19:6b19:: with SMTP id d25mr13894304lfa.282.1608899622959;
        Fri, 25 Dec 2020 04:33:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c886:: with SMTP id y128ls312965lff.0.gmail; Fri, 25 Dec
 2020 04:33:42 -0800 (PST)
X-Received: by 2002:a19:2390:: with SMTP id j138mr13699255lfj.294.1608899621997;
        Fri, 25 Dec 2020 04:33:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608899621; cv=none;
        d=google.com; s=arc-20160816;
        b=N8DCBXDuS/xV4VpOlRXUuUTCXvrt79oc3/ic7OmNQfJ1ymaXN7aSdX+qvm6mNGRHu7
         VRUvpi+DqHyB7Y8kaxk5IMTimtiFUCv807BF09UiWbiDatOC5+ZJZ0c/gzLUIdOCDOLW
         WKanqHNRF7ZA9chuPrD7xXPEDDeIoGrk7IPGUEipVSceE/vXmpbAz6BKhoHhREe0pkdD
         Hh6KGojFmfKd+I8MWTpQdhXbleU1wCHDb5E4i+EDLsxpdDDTLPU7QpOmSbGNfHyMTtYP
         6XaRE4Dp0smOMXGPUZP3dgKs6rB+QV6LmBH0O+e0BIYDvRMzqD2xDGdMM1Djcb+hxeD4
         H4GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=kt3O8fCSxoh8e8LkX86l4Sz4giqKMVue7oZdRRyeuQs=;
        b=Fnl6EncAXMG/51LtBzirn7MSChJQCpQ8TeAdhxX0yW4bUFatPQ3YrLoAmcd2SnPBfM
         WVHPsYr10EbfQ67TtcWbJdJIPN+sNsxH1U1sYefHOu7VfyMX9miA4Cy2OwA/Dv6R9pPQ
         wLNjovMOPGjwsbPZJXi5NfZB8BcWSYw8New042rkEeRwsV+6HIIlJ9gkHOPIMlnvLtvg
         dBEtjH9dZfKYGcPFn3PMy3wiyNbfMSiS2+d2TvpnmsMMVq4LAygnOis6edF+Ths8s8qI
         Litc+ZTHG23YFeuU9ew1CR+yr27TFxNCurSZwgW94J0iwhXmIPE3YqpqaMx9REmmkAp2
         PIjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=dc69mcyA;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id r26si782711lfe.8.2020.12.25.04.33.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Dec 2020 04:33:41 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0e8e00cc073e8cb60495d6.dip0.t-ipconnect.de [IPv6:2003:ec:2f0e:8e00:cc07:3e8c:b604:95d6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 17B771EC0281;
	Fri, 25 Dec 2020 13:33:41 +0100 (CET)
Date: Fri, 25 Dec 2020 13:33:34 +0100
From: Borislav Petkov <bp@alien8.de>
To: kernel test robot <lkp@intel.com>
Cc: Andy Lutomirski <luto@amacapital.net>,
	Masami Hiramatsu <mhiramat@kernel.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, X86 ML <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 11/19] x86/sev-es: Convert to insn_decode()
Message-ID: <20201225123334.GA5874@zn.tnic>
References: <20201223174233.28638-12-bp@alien8.de>
 <202012251838.G6eufP3Q-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202012251838.G6eufP3Q-lkp@intel.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=dc69mcyA;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Fri, Dec 25, 2020 at 06:50:33PM +0800, kernel test robot wrote:
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> arch/x86/kernel/sev-es.c:258:7: warning: variable 'ret' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>                    if (!insn_decode_regs(&ctxt->insn, ctxt->regs, buffer, res))
>                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Yeah, good catch, thanks for reporting.

Frankly, the readability and "extensiblity" of that function can be
improved by splitting the two cases (diff ontop):

---
diff --git a/arch/x86/kernel/sev-es.c b/arch/x86/kernel/sev-es.c
index 564cc9fc693d..ea47037f1624 100644
--- a/arch/x86/kernel/sev-es.c
+++ b/arch/x86/kernel/sev-es.c
@@ -241,40 +241,53 @@ static int vc_fetch_insn_kernel(struct es_em_ctxt *ctxt,
 	return copy_from_kernel_nofault(buffer, (unsigned char *)ctxt->regs->ip, MAX_INSN_SIZE);
 }
 
-static enum es_result vc_decode_insn(struct es_em_ctxt *ctxt)
+static enum es_result __vc_decode_user_insn(struct es_em_ctxt *ctxt)
 {
 	char buffer[MAX_INSN_SIZE];
-	int res, ret;
-
-	if (user_mode(ctxt->regs)) {
-		res = insn_fetch_from_user(ctxt->regs, buffer);
-		if (!res) {
-			ctxt->fi.vector     = X86_TRAP_PF;
-			ctxt->fi.error_code = X86_PF_INSTR | X86_PF_USER;
-			ctxt->fi.cr2        = ctxt->regs->ip;
-			return ES_EXCEPTION;
-		}
+	int res;
 
-		if (!insn_decode_regs(&ctxt->insn, ctxt->regs, buffer, res))
-			return ES_DECODE_FAILED;
-	} else {
-		res = vc_fetch_insn_kernel(ctxt, buffer);
-		if (res) {
-			ctxt->fi.vector     = X86_TRAP_PF;
-			ctxt->fi.error_code = X86_PF_INSTR;
-			ctxt->fi.cr2        = ctxt->regs->ip;
-			return ES_EXCEPTION;
-		}
+	res = insn_fetch_from_user(ctxt->regs, buffer);
+	if (!res) {
+		ctxt->fi.vector     = X86_TRAP_PF;
+		ctxt->fi.error_code = X86_PF_INSTR | X86_PF_USER;
+		ctxt->fi.cr2        = ctxt->regs->ip;
+		return ES_EXCEPTION;
+	}
+
+	if (!insn_decode_regs(&ctxt->insn, ctxt->regs, buffer, res))
+		return ES_DECODE_FAILED;
+	else
+		return ES_OK;
+}
+
+static enum es_result __vc_decode_kern_insn(struct es_em_ctxt *ctxt)
+{
+	char buffer[MAX_INSN_SIZE];
+	int res;
 
-		ret = insn_decode(&ctxt->insn, buffer, MAX_INSN_SIZE - res, INSN_MODE_64);
+	res = vc_fetch_insn_kernel(ctxt, buffer);
+	if (res) {
+		ctxt->fi.vector     = X86_TRAP_PF;
+		ctxt->fi.error_code = X86_PF_INSTR;
+		ctxt->fi.cr2        = ctxt->regs->ip;
+		return ES_EXCEPTION;
 	}
 
-	if (ret < 0)
+	res = insn_decode(&ctxt->insn, buffer, MAX_INSN_SIZE - res, INSN_MODE_64);
+	if (res < 0)
 		return ES_DECODE_FAILED;
 	else
 		return ES_OK;
 }
 
+static enum es_result vc_decode_insn(struct es_em_ctxt *ctxt)
+{
+	if (user_mode(ctxt->regs))
+		return __vc_decode_user_insn(ctxt);
+	else
+		return __vc_decode_kern_insn(ctxt);
+}
+
 static enum es_result vc_write_mem(struct es_em_ctxt *ctxt,
 				   char *dst, char *buf, size_t size)
 {

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201225123334.GA5874%40zn.tnic.
