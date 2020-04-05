Return-Path: <clang-built-linux+bncBAABBZEPVD2AKGQET7FIIKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F18719EC9D
	for <lists+clang-built-linux@lfdr.de>; Sun,  5 Apr 2020 18:31:34 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id p25sf9122524pli.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 05 Apr 2020 09:31:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586104292; cv=pass;
        d=google.com; s=arc-20160816;
        b=tTxsuWCz4djkeBSa2+y8GL6dVSVAHCGpPKqJy5fRIQiG6a+uwTwZc2IPh3+RaHiP4/
         NOj1IQaR4zb9gB9FMYCzWSyJGAioSTBfoeAlhQg3JNMyEf7tRaYDY98Q6z5P/vqHhZBT
         QRwyctj+muA6I0LCyPH2lHOcZGOjGzCGgwcHdx8H7txVIwl0z9m0XS608pvOkJdoafpx
         zqrdRHIvKTdwajzh16/o0zkbfExOz4XeLHb4AraWx7V+WbyBNFHk8c37LZWbMU3Fbtjy
         A4YfA6J3Zd1sSHtxioYbeIcrzHyzDWhlwRBUXurm/TDRX0rlCj3e7je3//FPvBb25YqE
         TY4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=uO0RVXNrjze60ZEeZFJg9TJSL5q9rR8SymLXJ6WF/d8=;
        b=XNZF/Kk2ON05rrtaK/ObGR5A4fVcR5lVawaAakekeCJsnOkqV2vxbO7Ff5aKki5MyU
         k1k8X+usU/hyMPTJvWjkHxmuDWM5X3CsyThLKU5BNjTdRIIqueKu0UFrNP1f7JNsbib2
         ZH+qvEosrsN71tSd7tY4OMOaAgmEtuL40HusZ+nIo7ADwi61UP68FmBrTWG50JueJzk4
         ubVtq5tpofcqqUZ/dQrn/LK45QWMqJnSXBZZnOBlwIFkzRhKi5abB43R324pMDrftHnt
         8WmuxmzYQH3aBTTkYiza6SGnsczks3ADF+8AF7GHAOlFFArBIE0i3dhnSno/sTDeIvcQ
         f78A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=NaC2xexF;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uO0RVXNrjze60ZEeZFJg9TJSL5q9rR8SymLXJ6WF/d8=;
        b=W/cJRTuk39QlKkEknyFCrtaMR3nzKtJJPLx1iK095BJMjl0MnR5tjQD71znEEzHwM6
         5R+jrEer8vwoZ7MT5RdL8dR5TzTvRY/JTXpJhNhsF8vkqA8XZDm85ERKC+YVdS6mUVk8
         imfGJ0njXmz/ufU/5pGShSWSdZ4HdF7g/YVw2zuT8GYAf6gBfb7puB2AjCVPyT3cPtQu
         WBCxHJBbGvqXY5TG08psyBShIg0WjK3hIFVnlABktvhheAFwhGzPB3IlxqMBZLo+QN2b
         aW4AxKO4xHzP2BFgLCvgWMo4BIFeeFyvjXczgZwRtFA7TJiMy1rm5I1FuXsXQRgVAmNv
         wzwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uO0RVXNrjze60ZEeZFJg9TJSL5q9rR8SymLXJ6WF/d8=;
        b=t/YEJm54bBTUXSwjmne+/ufZ32LYlX7SVfYbIGCMZEQwQcKNI93wL52Q93JBlLGR1Q
         yd5ZRJL9rIsmcez5MUIBTzf8Y8+RMnL113xU+RQgXXdG1BZDCIYVfzNmvMxZKy2lXU17
         CRrpeYzo/ABMch8f9zXUENEW58r33zPVX4rt8PW+iTBvL4Pu5a65vHV+eL60w+zn/6Cx
         rXM2eYjnOgtsqMaunCB8z7Yt+LUpiq1XuJx5qHV3hV2XTa/mu/jKPGBxPdyHrX23GEep
         MO0B7KyJOhPMaytRVJQCUo3vtFVzTVlT4mSPXi74Y4J5s8Bp0RQNWPZPN7a79YdhGXgd
         Zhrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZEbaDWUj+/IPIU/xUd/DyQIc4/ND8ODQWmjEiR0E11R4xj9GBV
	ugPvD1/u1zv7LBsGCfrTnpI=
X-Google-Smtp-Source: APiQypIMNB0daSwV3xWdRvgj6MZxtKDG6aEdTGbRWGeuF3PtiUo8otmExcfTQFWJYgiMoDq/ggnyYg==
X-Received: by 2002:a17:90a:1b6b:: with SMTP id q98mr21548913pjq.107.1586104292593;
        Sun, 05 Apr 2020 09:31:32 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6456:: with SMTP id y83ls9210559pfb.7.gmail; Sun, 05 Apr
 2020 09:31:32 -0700 (PDT)
X-Received: by 2002:a62:ae06:: with SMTP id q6mr18027548pff.137.1586104291998;
        Sun, 05 Apr 2020 09:31:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586104291; cv=none;
        d=google.com; s=arc-20160816;
        b=h1ZQ1DLODs6kzGESGNaaChbuH86Fe6y878u59f/GdETaS78RuyFNZW+x9HIHDlDSGe
         Pjk0bToz+7IrH4vrpdOHxtvf0ku2b7O5aAaHsJINuBU83UIVXVopZdUmg2nQH4UhBP6M
         dIVw7TQ/43YJnLLj5TrYz4JHdt/bBJKkKOr9WjwNYZ3vwOf3nKWftyIKlA99ls/UKN9i
         vdFP9KGO66I+itiFyPSPJxm5NoWfw5BCSmmhd0H7TrXccSt5i5y/i5+u+SdJ0G71R5Ic
         h7+njKjHOP2Q46QPsnFOKxC3MO+xnBuH5axDwUHqqVfs+BYa9gMUC8Mfyg4qwG/RMTpf
         uzRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=5dte5dvvsDQ3wOKn6WARCRcNltPssbbsGfaDy3F1DZ8=;
        b=fuRcojelDJp1cBYCBPxkIP+d2K5fQMh0jFLTPTJJx9fjM8K3zVbPvEmGfvnSr/K1PM
         WAscgEcfiVYtQgcgvmFBJTipaQkGbkIuV03Bjys8BiRWYInx6rPdooF/kyYyFWf39pZy
         OJu+qUitW+eMQaoyy8KD/q9XSD4tB9EFpN4g1yEdV6VNINwHrSUBEPH+kuWIFhSyLVPi
         8aAU9cgZEpjyz5UWN3xRLtThsBZWP0pkW36rE1oiMgo95oBK2mju0SZe2pXdRk0sFIpv
         Y66DqDKm1CtLCSJH/riLv45mBklMCizxQBcQovpRiRVBA2wkqigvav22ff9/ymO5Xh//
         +wOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=NaC2xexF;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id f8si1124843pjw.3.2020.04.05.09.31.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Apr 2020 09:31:31 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.flets-west.jp (softbank126125134031.bbtec.net [126.125.134.31]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 035GUxjX014785;
	Mon, 6 Apr 2020 01:30:59 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 035GUxjX014785
X-Nifty-SrcIP: [126.125.134.31]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org, linux-mips@linux-mips.org
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
        Masahiro Yamada <masahiroy@kernel.org>,
        Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Paul Burton <paulburton@kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        linux-mips@vger.kernel.org
Subject: [PATCH] MIPS: fw: arc: add __weak to prom_meminit and prom_free_prom_memory
Date: Mon,  6 Apr 2020 01:30:52 +0900
Message-Id: <20200405163052.18942-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=NaC2xexF;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

As far as I understood, prom_meminit() in arch/mips/fw/arc/memory.c
is overridden by the one in arch/mips/sgi-ip32/ip32-memory.c if
CONFIG_SGI_IP32 is enabled.

The use of EXPORT_SYMBOL in static libraries potentially causes a
problem for the llvm linker [1]. So, I want to forcibly link lib-y
objects to vmlinux when CONFIG_MODULES=y.

As a groundwork, we must fix multiple definitions that have previously
been hidden by lib-y.

The prom_cleanup() in this file is already marked as __weak (because
it is overridden by the one in arch/mips/sgi-ip22/ip22-mc.c).
I think it should be OK to do the same for these two.

[1]: https://github.com/ClangBuiltLinux/linux/issues/515

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

If MIPS maintainers ack this patch,
I want to inser it before the following patch:

https://patchwork.kernel.org/patch/11432969/

 arch/mips/fw/arc/memory.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/mips/fw/arc/memory.c b/arch/mips/fw/arc/memory.c
index dbbcddc82823..89fa6e62a3b3 100644
--- a/arch/mips/fw/arc/memory.c
+++ b/arch/mips/fw/arc/memory.c
@@ -117,7 +117,7 @@ static int __init prom_memtype_classify(union linux_memtypes type)
 	return memtype_classify_arc(type);
 }
 
-void __init prom_meminit(void)
+void __weak __init prom_meminit(void)
 {
 	struct linux_mdesc *p;
 
@@ -162,7 +162,7 @@ void __weak __init prom_cleanup(void)
 {
 }
 
-void __init prom_free_prom_memory(void)
+void __weak __init prom_free_prom_memory(void)
 {
 	int i;
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200405163052.18942-1-masahiroy%40kernel.org.
