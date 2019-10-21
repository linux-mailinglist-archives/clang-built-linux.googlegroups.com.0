Return-Path: <clang-built-linux+bncBAABBQ6TW7WQKGQEKBQVJ5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCF8DF41A
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 19:24:20 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id m8sf2574455ljb.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 10:24:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571678659; cv=pass;
        d=google.com; s=arc-20160816;
        b=rPWAVw+VdNVtnUaZEzjmEL5Zl8VGJlpMvqxPovgf8P2UYSAtlzoTfNCv0Txi5AFwgT
         TOF0eESlKJJkst98fMcydAoknVuuezF+cyTteZRuHQLLpFtLJEakIkrkHC+AUmcOzBvp
         1+TLF2bo0XdwjidyMbrnvcvS04A4GX857ep9Ggr+LTIBhM6uVyPWCT8lGmfUAz0iiDOE
         3IIeoPWqyfQsULHfAk+8cfVRYnpL3smuY67aADAXABVtf6gv6SXYJ65YArB33dmEZgjs
         h6Ebpur+YcQq/TTWnnMcy1ejFlMQY0pDvHxJFbl412ntklaa1Jf/bsW6z8NKrmWOWpn8
         JRXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wzbVBQiG9WBw+TywSEjcOx4oIGqpUKsnpQRzLbTM2dI=;
        b=XC7GXzpQ3oLl90P0qFE+XkFn28oS2qaKBfp+2d/Ys3zmcUD9bJK/Uh40hF3kGflQaX
         43O6nqnoXBYbLqQntga7FgD4Ii1kN5lzIzJjfuc+zk507SHTPUytMTrsrOdHrJw6QfZF
         zO8vwpDhmYUMwya2dzyJSSTCemvGG3+sChuQWgc2+VrafkN3P3MJ8fiVZfxK/eqEDQ7b
         X60x2rd4wQsG75j0v6DEtikkSwbWRCdQJmusgYTz/j0fjLlQyQ8JscxhDlkm0p5Y+SaC
         A4RE+OJ3seWn0a3xRVT9fc/MRvjCXF1RRj6+Ce09HMi6kx3OCUDomGa6FlyEXwQJV0We
         W8uA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@shipmail.org header.s=mail header.b=HnBNMudk;
       spf=pass (google.com: domain of thomas_os@shipmail.org designates 213.80.101.71 as permitted sender) smtp.mailfrom=thomas_os@shipmail.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wzbVBQiG9WBw+TywSEjcOx4oIGqpUKsnpQRzLbTM2dI=;
        b=soaGDtGkz0ZKyEZ1iZOrg6JFOeXPP9k0GMpuHrRfaj9pxEx9uf3WyfgrkAcoiN6Xfv
         wMtFUcr4rIOz8TzXIaCL7yEsopEGMb1gitxYif/StRUWQofkPIJl/Unun0yikU8mUrNZ
         1UtZ4q22mXeohoXzYMGKJIcHj1uEJWyAKGIK0KhbM6Rd0HgCn8BxTnBL+suN4e2gU57A
         hHY8S/lYWAfwNTwapaWCoK2OQR1N+YVSeLn8LSH5kavgyVrhtBB4e9NWXGZgPJ1epj5a
         24c2PrRAj63QhgVcsliVKKTyTe/aK8lUy7JL27yKKFHN+4+mR++bUiMr7orrKCb7rs6R
         zfwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wzbVBQiG9WBw+TywSEjcOx4oIGqpUKsnpQRzLbTM2dI=;
        b=Nc+pH91KgMDrOPFMfqCqKkkkfKeonzHHlh6By9ubj+sP0wbXJGQNdkhE+hpjqQ7+x0
         BJnVxiAT7t+CZRirMMVUUE+Vnn4OKFTm3bhVBw2DwwvsKKpXlQyqtwLq+feWO7dQzosq
         M+sDjhtwjehmjZlcqb33x2tY/YraGnfk4qNyjyBc515btAO4CwZVnS3nkJOERGazIxxD
         33tZGVQ7dC675cA+9b1pNtfLqH2k+jCHbcxSdi12zEtXplaHdnG5aEyNkrBOf911hpBc
         SY3oGjQl/lrLy5ZP5MjIW9Yy+YHDcsqj/VKm7e65i5KxqmKakuXuC3qJ/9rU3ZvsCHuc
         X1xA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUHCrYidXmh5nI+Jah7b8BV6VJjhannkWOG3NygD+FKoiif6xaq
	GQ7eTkT4LIeChVXb0EIiGdA=
X-Google-Smtp-Source: APXvYqwQmPEisYMHZLXCk+QfFal87AkubEzFRMyKa8gTcJVqMsCyaY6iRNsUWfSd+eepTT60ujbJDA==
X-Received: by 2002:a19:4f0b:: with SMTP id d11mr5482672lfb.51.1571678659758;
        Mon, 21 Oct 2019 10:24:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5613:: with SMTP id v19ls274480lfd.15.gmail; Mon, 21 Oct
 2019 10:24:19 -0700 (PDT)
X-Received: by 2002:ac2:43d9:: with SMTP id u25mr16433507lfl.142.1571678659383;
        Mon, 21 Oct 2019 10:24:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571678659; cv=none;
        d=google.com; s=arc-20160816;
        b=zD2g9YPBgdTM58fqBOVyLsWupKuHVsmuGcgb7g06KF76mWrTR4IQjWiCHRA57iHI1I
         qZLCNgEqYFKxNbRx6zUNYz4PMv4EACvDtTU1hDNjrNci8RjSzU/K3qsvMwpTE5/nKcFA
         dZOOhmAopOYdPCye9lSCXEQRlt/vo58bfVDt0VyzX9zATYxWNPtyAgt0ink8CTkosxWG
         cIcJfopfGUSdv3pBpPpw7gDUvh+y12zhgaXnZi7Vh/JBbD0m3N3WIv4q/7+/a+V+wj8T
         K5nEu0NkOHkdMr1JKEDV1ABL2gVI4ejdW50AA/bPB5NFsqwaNa8IX+fVPZ4Ka5bEmcR/
         +ojg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mKa3gjbTGuSda59B3ys01RMLrkaf4+YUIjKDoIL62Ks=;
        b=d63zs0BNgRvoy1GCX3fpE+GdPnZmCcrpMe2+LsRjBsCy+MXCHoB3HRnyl6ksPph+1t
         A2w1UBRfAbljE1YkRnodzWTprPbZROMoABYtX4mPXZABSCZ7QirTC2Zym+sFJ2Da6sFs
         3RmC0aC1cJKIHpPjoIiO9qdbHy9dd42FDWl505N6nAExK9JlvHoP/7jYKZZXIjWAk77I
         Xv76Ij7Rmm+1xHAJEfNxtZxOIbPVXpCturkTIVLTzdDZMu6pucW9XyrbebSw3tTDIkTc
         tDh8q3YYXk4Jh7ZF9+DtQdoj1boxfQcFWvebeWPs29gf0NRiW2HxOYemL9+BhLueYdEp
         rlRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@shipmail.org header.s=mail header.b=HnBNMudk;
       spf=pass (google.com: domain of thomas_os@shipmail.org designates 213.80.101.71 as permitted sender) smtp.mailfrom=thomas_os@shipmail.org
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se. [213.80.101.71])
        by gmr-mx.google.com with ESMTPS id h9si560589lfp.5.2019.10.21.10.24.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Oct 2019 10:24:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of thomas_os@shipmail.org designates 213.80.101.71 as permitted sender) client-ip=213.80.101.71;
Received: from localhost (localhost [127.0.0.1])
	by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 7ECA23FA1C;
	Mon, 21 Oct 2019 19:24:17 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
	tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
	DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
	autolearn=ham autolearn_force=no
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
	by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qs1SSQC1V96B; Mon, 21 Oct 2019 19:24:16 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se [155.4.205.35])
	(Authenticated sender: mb878879)
	by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 27BEE3FA41;
	Mon, 21 Oct 2019 19:24:14 +0200 (CEST)
Received: from localhost.localdomain.localdomain (h-205-35.A357.priv.bahnhof.se [155.4.205.35])
	by mail1.shipmail.org (Postfix) with ESMTPSA id A5B94360195;
	Mon, 21 Oct 2019 19:24:14 +0200 (CEST)
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m=20=28VMware=29?= <thomas_os@shipmail.org>
To: linux-kernel@vger.kernel.org
Cc: Sean Christopherson <sean.j.christopherson@intel.com>,
	Thomas Hellstrom <thellstrom@vmware.com>,
	clang-built-linux@googlegroups.com,
	"H. Peter Anvin" <hpa@zytor.com>,
	Ingo Molnar <mingo@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	x86-ml <x86@kernel.org>,
	Borislav Petkov <bp@suse.de>,
	Sami Tolvanen <samitolvanen@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v2 1/2] x86/cpu/vmware: Use the full form of INL in VMWARE_HYPERCALL
Date: Mon, 21 Oct 2019 19:24:02 +0200
Message-Id: <20191021172403.3085-2-thomas_os@shipmail.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191021172403.3085-1-thomas_os@shipmail.org>
References: <20191021172403.3085-1-thomas_os@shipmail.org>
MIME-Version: 1.0
X-Original-Sender: thomas_os@shipmail.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@shipmail.org header.s=mail header.b=HnBNMudk;       spf=pass
 (google.com: domain of thomas_os@shipmail.org designates 213.80.101.71 as
 permitted sender) smtp.mailfrom=thomas_os@shipmail.org
Content-Type: text/plain; charset="UTF-8"
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

From: Thomas Hellstrom <thellstrom@vmware.com>

LLVM's assembler doesn't accept the short form INL instruction:

  inl (%%dx)

but instead insists on the output register to be explicitly specified.

This was previously fixed for the VMWARE_PORT macro. Fix it also for
the VMWARE_HYPERCALL macro.

Cc: clang-built-linux@googlegroups.com
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: x86-ml <x86@kernel.org>
Cc: Borislav Petkov <bp@suse.de>
Fixes: b4dd4f6e3648 ("Add a header file for hypercall definitions")
Suggested-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Thomas Hellstrom <thellstrom@vmware.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/x86/include/asm/vmware.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/x86/include/asm/vmware.h b/arch/x86/include/asm/vmware.h
index e00c9e875933..3caac90f9761 100644
--- a/arch/x86/include/asm/vmware.h
+++ b/arch/x86/include/asm/vmware.h
@@ -29,7 +29,8 @@
 
 /* The low bandwidth call. The low word of edx is presumed clear. */
 #define VMWARE_HYPERCALL						\
-	ALTERNATIVE_2("movw $" VMWARE_HYPERVISOR_PORT ", %%dx; inl (%%dx)", \
+	ALTERNATIVE_2("movw $" VMWARE_HYPERVISOR_PORT ", %%dx; "	\
+		      "inl (%%dx), %%eax",				\
 		      "vmcall", X86_FEATURE_VMCALL,			\
 		      "vmmcall", X86_FEATURE_VMW_VMMCALL)
 
-- 
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191021172403.3085-2-thomas_os%40shipmail.org.
