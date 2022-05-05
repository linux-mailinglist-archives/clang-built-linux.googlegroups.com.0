Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBSXXZWJQMGQE7SAXTIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A86A51B8B2
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 09:24:59 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id m9-20020a4abc89000000b0035e964b0813sf1765780oop.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 00:24:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651735498; cv=pass;
        d=google.com; s=arc-20160816;
        b=QxeTmeO/5tbCH/EAOiPkwSWagD9HGrk84pTfA/9/Wh1sl4KP+ACZwFCDasGvHDTYQt
         eBIbZS4t5DhazQGQE+UcDdtxNPnsiNmS5atSuqINUCFE1BzWalTZ7i0BxLC5fCITBeN2
         EFj1PaUIVfkHqtbWkAbOJSBPHR3NXr6e9mqNi7iC2/LOxAp4+k7GxDqE9jA62HgqF+Z5
         ZE2f6VBX1f7AaWEefhvo6h6F0hUXjP+x2oGdmpsjQEL5M31ZOW7Lh+MY2bM6DhIYpPKf
         by8N1YWRmotmCo4dSPDtltgyuCMIWcVNmRSo8cGL3WEE19zdgYXzHtsHjU39dcvJTXpi
         AxHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=PhAUSzhwZY5CpRJ7jLM7iBCa5YLZsYnBnZ4yeJgxyBE=;
        b=xaO0ImFW4XbWxnGHu0f+nHpySYDkgMaNJEAxrecpcRUXlILmm4edqqMkLpFarwATP9
         MCfFOj02tOhGShlNuSxT16d904D3NdOESXsL8qayKvZMesqksp6zqDgu9EZXGtNHThZG
         sHBwDCMTR7blTzMR8OaxheX9ovODbgOTFZvmGI3VLgciy/AP/hdMxbupDr/cC6vM1a/6
         PmYRhwdff5ivWOIBkdbZceCQttNzbbrbauaFOa1VyA3uxj5Zo7fjBsKkQxlZe63R3Uxt
         iI6VbXOqNU1A6lOhZMBtdFJq3SSJkpa2rWiSeybeSrpMuieFVe0Yg3XkdhCNsHIHvmit
         1oNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=CZSbHVFm;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PhAUSzhwZY5CpRJ7jLM7iBCa5YLZsYnBnZ4yeJgxyBE=;
        b=kGtNJTql7uB8yV6kOf+O4aaIIZaBZyxCEFzXfFqChhk1/FIpnKpuku+4dYdhIl2OFs
         PAo5DtLWr1hC9x1a6ExmdfFJAMYxZY9E+0AFcAx7PuPsYKEAbHExhXATP4n6pengPdPA
         dUeOUeAOUWl9dBmmtrJ4nXVOOjcb5u7VIe9MpRkjiDjDOmMrpdn2O0DAI6Wv2eHf4617
         UCyZ0VikntBVCHSKn9Ult4DAsbDnR6hrhLde5AGK9XeCqJ1FAx+pplqhtMLkM9voZTwf
         FelhMAfJTjGD6gNsaA1EdGGCScpENjs832O05o2Tm/1EERpu7L160nM7Vczy5CopDqXp
         8soQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PhAUSzhwZY5CpRJ7jLM7iBCa5YLZsYnBnZ4yeJgxyBE=;
        b=14oxAYBs5ZrUPRY06KJc0i6A+9gguwINfGbM64Fyv0V0SMvhFfkR05adHpmKd5lVnE
         rForRZ21QWS1FS7sX4WS32h5WYBUbXWAmsmLFXzI6dKZf1GS+5xKQ0hH7Ud4QdRhxCPG
         cydUBvaGjzBDHCBZumQgAA5pOaik7v4W/zqfzEJ/E7ye9OqeOTdwuhmVcYFJFOdxDp9a
         sH3bwHqKktpmb6MFz17o8UWfRc/NzY3NxXUcDd+pBLK2tCvTd5son/q8fh0RSHKr239i
         9mai713DE+5M45/Xbs/JxPbi3niCGiaQZTO7kyu/du0X4HkwgPoAQyvfa6XZTd9T9yM5
         BOdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531SOqsXtFjL6RD1f1iv1hK9hhOuKk4t4bqJrQRqjYawL8dDShxi
	nsrHrjyl41GBHvAFJgUc6VQ=
X-Google-Smtp-Source: ABdhPJyFrxRgeE8LvmEhxCq9A2pkTF0Dx4fYItxX+bzP3nsCGto5P7z+efI9gVu+5PE/MlTLzMEEzw==
X-Received: by 2002:a9d:34b:0:b0:605:f0f1:e28e with SMTP id 69-20020a9d034b000000b00605f0f1e28emr8663485otv.304.1651735498194;
        Thu, 05 May 2022 00:24:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:20a8:b0:325:df42:485 with SMTP id
 s40-20020a05680820a800b00325df420485ls1639623oiw.6.gmail; Thu, 05 May 2022
 00:24:57 -0700 (PDT)
X-Received: by 2002:a05:6808:1791:b0:326:5fa8:a668 with SMTP id bg17-20020a056808179100b003265fa8a668mr1626188oib.264.1651735497854;
        Thu, 05 May 2022 00:24:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651735497; cv=none;
        d=google.com; s=arc-20160816;
        b=Pk+91ysb/LPBNlMN/GpQg041SRawBhNo70Vd1ZJloljtsgZTZVI2/CIQ2/R3z09GPm
         Dbf8DcXuJifaIwD7d+BlGnbauCv4jqhiyTmUwxOyeIXODGzCgUkrT9lzZMb5vi6BbIbw
         zhTCrJuNTSAkH7jMWBLOLirtAntCWbNy8zVRzbv1RRhmDU849w76+Hz612wi1U+rdF8h
         +PcCrEW8e+nN3MhF+vzV/o4L1H4xP8GcDkpgyVY0+FNyhms9oCGz3tl8xFoE5KI84etb
         zbO9APBBShzyqb+UHWWpGrdW1TzbjCfwJNfcBOjQWKvGOpOdgExHZkW6sg0W9rZslA/l
         gdQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=vWIe6Hz1v6TN6G/VnDfKR17//GxSJcR4wll8Uklx9kI=;
        b=fNaGkoHQg2ixzzaKfE2PQ5IbKv34Po/QIdJqHsa2MBMOL1OrLYKGybUfZW3DszVtpN
         lihDmMcaLYkK4MK1FTgbbvuyFSkVfeZZKD1aez/P4BotIgz98xx+iDRVTshCtUnpnpIK
         Ak2KlVBKHLHdqXDIyvy/R/wncU1jzaJi65Hs0rvwH6afLb8UND5II3XRbjWXvSVFEWJI
         /9+PEMK6Et575epXvflg+0BC2VXSBsuCHMnIKBMSNeS6IEeminfsbQXFxLonoA2NLF+3
         H9ivPrFy4rqW4QDC7wLJkNEuIec9IGKieDc+5a0yMK38eqsiRGnYZLlJIxHgswT4x7A8
         EiSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=CZSbHVFm;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id a20-20020a05680804d400b002da82b0660dsi51385oie.1.2022.05.05.00.24.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 May 2022 00:24:57 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 2457Nenn019426;
	Thu, 5 May 2022 16:23:46 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 2457Nenn019426
X-Nifty-SrcIP: [133.32.177.133]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
        Nicolas Schier a <nicolas@fjasle.eu>, Ard Biesheuvel <ardb@kernel.org>,
        Luis Chamberlain <mcgrof@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
        linux-um@lists.infradead.org, linux-s390@vger.kernel.org,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Kees Cook <keescook@chromium.org>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v3 05/15] kbuild: generate a list of objects in vmlinux
Date: Thu,  5 May 2022 16:22:34 +0900
Message-Id: <20220505072244.1155033-6-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220505072244.1155033-1-masahiroy@kernel.org>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=CZSbHVFm;       spf=softfail
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

A *.mod file lists the member objects of a module, but vmlinux does
not have such a file to list out all the member objects.

Generate this list to allow modpost to know all the member objects.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>
---

(no changes since v2)

Changes in v2:
  - Move '> .vmlinux.objs' to the outside of the loop (Nicolas)
  - Clean up .vmlinux.objs explicitly

 scripts/link-vmlinux.sh | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index 20f44504a644..eceb3ee7ec06 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -311,6 +311,7 @@ cleanup()
 	rm -f vmlinux.map
 	rm -f vmlinux.o
 	rm -f .vmlinux.d
+	rm -f .vmlinux.objs
 }
 
 # Use "make V=1" to debug this script
@@ -342,6 +343,16 @@ ${MAKE} -f "${srctree}/scripts/Makefile.build" obj=init need-builtin=1
 modpost_link vmlinux.o
 objtool_link vmlinux.o
 
+# Generate the list of objects in vmlinux
+for f in ${KBUILD_VMLINUX_OBJS} ${KBUILD_VMLINUX_LIBS}; do
+	case ${f} in
+	*.a)
+		${AR} t ${f} ;;
+	*)
+		echo ${f} ;;
+	esac
+done > .vmlinux.objs
+
 # modpost vmlinux.o to check for section mismatches
 ${MAKE} -f "${srctree}/scripts/Makefile.modpost" MODPOST_VMLINUX=1
 
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220505072244.1155033-6-masahiroy%40kernel.org.
