Return-Path: <clang-built-linux+bncBD66FMGZA4IPLEWWRADBUBBVUKGJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1933EAC18
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 22:49:58 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id e12-20020a67fb4c0000b02902bcb9baa658sf869061vsr.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 13:49:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628801397; cv=pass;
        d=google.com; s=arc-20160816;
        b=ph/n7zuq6m4ps/S9O4+CAT86d9dlJqgEB5lveJqh9y0TsNxMuoR6N+Tau3d8s2tkLT
         pwHpM/tLoMRqzVFYEVU7J8bsiyYS+VyTLS881GTCWGn7forD6JGwAat2yQCrEqtZZkpQ
         0RyWrcsmofKrGLiGFakAOKPHHNm6Ek58Yle36JtUZZt9os/5VXpCpyHADbEQebM1WQLk
         +5EXEvPKbXo9uIwOaXuQhXsUS0e2CXlEsGxXUa4tSKU8VRyXN3px/kluXaegbzJRyL6m
         LMoaszkcUm4+T9NzK6eaAEfU9+1jT7p9jEa2zGSiQaPeI1rYrNKmbn+qv1iBrxXa+kFr
         h23Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=ziZx0FZd5GMvHyH4jRF4Gh8KTB7+rehBS+5cY8MpZmA=;
        b=q3AFrN99KIHe+SA6Qybq2tPb+Z2LiafTRZurD+9EiHtXNft9v2uHoKAdx6Aajnif8G
         XOlo1mqsRwnY170xe5MZnRaAY0dow0HxSOQHkOLOxt8td33fkYuT+WYZ5HyzHrvPgRjh
         EH+kd8rcV5KjlpM+rwXxc1TqcB1AhPaTn578GnicJsuFsxhIMvIVjpHlvShf6Laxs9tT
         ZWDzzddVDMOlyAInr7OSyCGPDwks+dBwV0rzc1gdEr6kzY7bcJ+lADV5fyC+ZQhAQH8x
         DZ7/yEvyWtx8oEiLVIyLOwTsJMHe9HQmVdXcLsGR3KIvqCJCbw74f3ByOxKaadXWd+re
         dTtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eAMZXGbn;
       spf=pass (google.com: domain of 3dikvyqukeeszbeobtbbtyr.pbzpynat-ohvyg-yvahktbbtyrtebhcf.pbz@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3dIkVYQUKEesZbeObTbbTYR.PbZPYNaT-OhVYg-YVahkTbbTYRTebhcf.PbZ@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ziZx0FZd5GMvHyH4jRF4Gh8KTB7+rehBS+5cY8MpZmA=;
        b=k521sQdZ43dvQALMUy2vpTD2Co8b3oh/VPPFmfzYd17PaktUQI0MmY6HWIG7gBLPOe
         T7yBz3GxxorRBqu5LtqlGBbP15LrhL3zANpePSaHk0HogV2my23GSFFN7gMbIHr/+bxW
         v27hzjN01AUbbGf49IyCwtHqfLetg0v8ZwCevS1LUDjmP0eeSwkRw2BYUmJLNoiEpSgB
         kiH5+pxNaT5HBIe+d5upCdUP7Pa3O+18gIO6zq30RkHcTnlVQ2RChZ6ctOhYVLz/NF53
         fjwhYLJzXb6yeGIEolkf5GqUYGLLhnU2AcY107/IPh2tZ0OUst2OjslwM0qNjf84bImq
         2QqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ziZx0FZd5GMvHyH4jRF4Gh8KTB7+rehBS+5cY8MpZmA=;
        b=eoD6PuwTwUFoxUVKn6A+bALNv5hj6LXxWIJxL/5j4UFN650Aq1/nMvPDyjS7Z/k9Ju
         sHh4IO3iKiqwbKkFa+Z3P05prfs3BX/DuC8elO2RtgdCMaWdpdPCFhbevqqVzNC8a4h/
         txkZUezrWvBe7qL6+7BI2nyFMAKLhm3tjVEHbajRZUziN24OcxwrZvV54gwCEF+AzkbI
         kawaaMR3USadosyXn+vVeSKW2BAM5wDUrJTxSkRtYs+hLwnVqGC1Dp1yv45ECc6Yhy8S
         jkikvxdm2MQOE6wZKMrQDH6huIbQr/S+o29hVU0bL61tQqOHIr6S/jWiVqjvp5XHuEE/
         8ROg==
X-Gm-Message-State: AOAM530RF9Vrobi/RZKDPtre8o/D+Pignb05mn4gdxk5XIgd1fS9cRzj
	OH4aviMxdVij60rjZPmbuHM=
X-Google-Smtp-Source: ABdhPJzXKjWJ4QS21MKWqY3f8ED+++U+j6ipM39hJqYPdg+TYKxL9cq70rCDlKvPrUMnmTiv7w6xVw==
X-Received: by 2002:a67:ed9a:: with SMTP id d26mr5438761vsp.60.1628801397755;
        Thu, 12 Aug 2021 13:49:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6701:: with SMTP id q1ls768417uam.11.gmail; Thu, 12 Aug
 2021 13:49:57 -0700 (PDT)
X-Received: by 2002:ab0:726:: with SMTP id h35mr4451307uah.77.1628801397281;
        Thu, 12 Aug 2021 13:49:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628801397; cv=none;
        d=google.com; s=arc-20160816;
        b=CWc7udLCQ9aPYPBeHQxfGlrf+gIFlpB/spcobyTZu+uJQ6mwcn1eSUSi+oiB2Xvwkt
         7jNsm4KoDWd9Zd6V2OTJLEqGA5XeoYEeyB1PZs2f/VE5Ut1Sj6U3fIc7e1I4iAYhjAtQ
         3Kf/H43gCW1x3oZoa2l/XcaGz/eLcc4P5dSEx92A7A96h25C4FCind8ZUu8xryhK31oB
         4Zhy9jbMIAyOu8XhdRbAkAytrihyCDzPD6ZgSsSqViRUxU2HsxWm3CoFZMi1ww0FQpmm
         YkmycUGW1N2+p7xtzyQMOvdWXygdfvGxAqheTecrNxgIS7I/8eSP5SkLiGG69uX3lGTj
         c3zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=EEcmItRjp8Rm0JAsCYF3K+KT6iLKBKGG/FOXlRG+5Ik=;
        b=YMPaQt5tqG6c8n6MraAONfdlrwj5Jjg3uv83Pi5wZF2pHMkZe1+TC79SEVI6pl2EF5
         BQ1yiQG7zK/RsgJQDU9EHbksOXtwD74MGSWxsdkI5Mcx+QPav42aXatWvjiAup3CdFLD
         VSiKFrMm6Z974ePzVwtvbVhUinzCqgJYi0AzSgF942uMhOUXAiJapDOQDrCMxlLkyrxI
         47dUeDtPThz5yqmjH32c8vCXeZ9sekFCV5zL9wPUGkas1Z5CBDQZyIuv8Stgb3l2F8D+
         mFBhGwIPKLnZBRdXYzByy9TRS2JYefuKehB+v8T7wnADDIS72hXIoz8DFdlxGGQrlMZ5
         KriQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eAMZXGbn;
       spf=pass (google.com: domain of 3dikvyqukeeszbeobtbbtyr.pbzpynat-ohvyg-yvahktbbtyrtebhcf.pbz@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3dIkVYQUKEesZbeObTbbTYR.PbZPYNaT-OhVYg-YVahkTbbTYRTebhcf.PbZ@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id k21si43591vko.3.2021.08.12.13.49.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 13:49:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3dikvyqukeeszbeobtbbtyr.pbzpynat-ohvyg-yvahktbbtyrtebhcf.pbz@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id u16-20020a05622a14d0b029028ca201eab9so3862685qtx.21
        for <clang-built-linux@googlegroups.com>; Thu, 12 Aug 2021 13:49:57 -0700 (PDT)
X-Received: from fawn.svl.corp.google.com ([2620:15c:2cd:202:d96:5aae:6b0e:adc6])
 (user=morbo job=sendgmr) by 2002:a05:6214:892:: with SMTP id
 cz18mr5870385qvb.60.1628801396999; Thu, 12 Aug 2021 13:49:56 -0700 (PDT)
Date: Thu, 12 Aug 2021 13:49:51 -0700
Message-Id: <20210812204951.1551782-1-morbo@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.rc1.237.g0d66db33f3-goog
Subject: [PATCH] ppc: add "-z notext" flag to disable diagnostic
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Michael Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Cc: Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=eAMZXGbn;       spf=pass
 (google.com: domain of 3dikvyqukeeszbeobtbbtyr.pbzpynat-ohvyg-yvahktbbtyrtebhcf.pbz@flex--morbo.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3dIkVYQUKEesZbeObTbbTYR.PbZPYNaT-OhVYg-YVahkTbbTYRTebhcf.PbZ@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

The "-z notext" flag disables reporting an error if DT_TEXTREL is set on
PPC with CONFIG=kdump:

  ld.lld: error: can't create dynamic relocation R_PPC64_ADDR64 against
    local symbol in readonly segment; recompile object files with -fPIC
    or pass '-Wl,-z,notext' to allow text relocations in the output
  >>> defined in built-in.a(arch/powerpc/kernel/misc.o)
  >>> referenced by arch/powerpc/kernel/misc.o:(.text+0x20) in archive
      built-in.a

The BFD linker disables this by default (though it's configurable in
current versions). LLD enables this by default. So we add the flag to
keep LLD from emitting the error.

Signed-off-by: Bill Wendling <morbo@google.com>

---
The output of the "get_maintainer.pl" run just in case no one believes me. :-)

$ ./scripts/get_maintainer.pl arch/powerpc/Makefile
Michael Ellerman <mpe@ellerman.id.au> (supporter:LINUX FOR POWERPC (32-BIT AND 64-BIT))
Benjamin Herrenschmidt <benh@kernel.crashing.org> (reviewer:LINUX FOR POWERPC (32-BIT AND 64-BIT))
Paul Mackerras <paulus@samba.org> (reviewer:LINUX FOR POWERPC (32-BIT AND 64-BIT))
Nathan Chancellor <nathan@kernel.org> (supporter:CLANG/LLVM BUILD SUPPORT)
Nick Desaulniers <ndesaulniers@google.com> (supporter:CLANG/LLVM BUILD SUPPORT)
linuxppc-dev@lists.ozlabs.org (open list:LINUX FOR POWERPC (32-BIT AND 64-BIT))
linux-kernel@vger.kernel.org (open list)
clang-built-linux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT)
---
 arch/powerpc/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
index 6505d66f1193..17a9fbf9b789 100644
--- a/arch/powerpc/Makefile
+++ b/arch/powerpc/Makefile
@@ -122,6 +122,7 @@ endif
 
 LDFLAGS_vmlinux-y := -Bstatic
 LDFLAGS_vmlinux-$(CONFIG_RELOCATABLE) := -pie
+LDFLAGS_vmlinux-$(CONFIG_RELOCATABLE) += -z notext
 LDFLAGS_vmlinux	:= $(LDFLAGS_vmlinux-y)
 
 ifdef CONFIG_PPC64
-- 
2.33.0.rc1.237.g0d66db33f3-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210812204951.1551782-1-morbo%40google.com.
