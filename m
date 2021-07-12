Return-Path: <clang-built-linux+bncBDV47E4WQMNBBBX4WGDQMGQEYOK6KSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id DCFAA3C6211
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Jul 2021 19:38:15 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id k25-20020a635a590000b02902288bbae35bsf1101828pgm.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Jul 2021 10:38:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626111494; cv=pass;
        d=google.com; s=arc-20160816;
        b=xHcxoRKO5CCRFyEIAkZr8VokkZz/3ceaLXPQK2PBYtGd6GY2wX7NVw3tTzRGcoC8Q5
         IKEJmnQTmuv5cioKMTso6Xube+Vu5A3DuF6X31vmdC2NfYEZZ6G8SZ2wF9Obvl+vhzPf
         QOOVYYiiaz4W/0pHo/DfLXr8+3I8qdQy5JDWo4ph6ul0oIuAPT6JC1tksYnfykdR3dGd
         8DpGUnRsTHQ+XL7Ado0hybrNd75hzsgt9PsdlfZ39pH3nUR4vNxHSFOCOWtMiflqwTXR
         +1P7dGXBSIBHMlsHF4YXhIjnT9o0degd8nvbM0JfgyfakbHBd4v+XdrS85AaPkXBUVCa
         pGwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=4gG2Qin6Mr1DYRJ76TVsVYcqR52CCXhpHK4e3ixTIKo=;
        b=O8gcPz/A1pCJMvNhbRfJiEapR7vb/laAIQwJaknXW1SbEB4TYmxz+X02I3O7FMzXUw
         SpFqUY5eRevgrXMWMXtjZ59Q73QuBKu6981I190NoVJ+EIhZojZzXXF/nh44+/camNqD
         9zeHIwnk95TzOEap67llZmpdm06ruBVYZZoh1Jq2pgKv5qBHzjKH86H0c2xtEeURrSaG
         uuTzpu1HEMCPsVsV6XSXhH+oo2yVKtJkMx9NMZtUllvsPwlzxjAAkcEoykZ2FyRVJbnJ
         kkpgv4/3mlHSK0cpAtohRm7nn3ZxEBamtt5UPwlIK8BM+tvuUT9r8+TbZHFvQDL51AbQ
         ifbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nKHhlhdR;
       spf=pass (google.com: domain of royujjal@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=royujjal@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4gG2Qin6Mr1DYRJ76TVsVYcqR52CCXhpHK4e3ixTIKo=;
        b=LFrpk0Eoq5uzmoKVHVgFPK4mfiZBfXWOFf+vf8JOEK7gCEqNqJcz5bi4XvHEJzqDbc
         ldt+hoDMvglWFcks3x4MvlbK0OsqCDu2rKl1nGeo/3vebyfwonyNGNIDSTFYlOhi8ZrI
         IYrhKM7jPsee7IKcyleWH9Ueq6Lqa3mIwEpSZWbcpmF7RQbeP+Lq94tRttY4tBSAvB9D
         aEX8LyUsD63uDAzCYzjYKtH0ypZaOf+TFbNUWnEzV+N4UC/mUPuLDB3sTh3ga/1FxGNs
         RD3cSVAL9vYwFEiaVAEGUzKwJq+tjORlgKUYO8etgW7zp27fDD+WXcn3rqEV6erWZBsW
         F7yg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4gG2Qin6Mr1DYRJ76TVsVYcqR52CCXhpHK4e3ixTIKo=;
        b=dRBkOSrHIo45Ky9yR/okTmOWXn5TOtTRE2GPBAdx/z4x3E+12dK9xYKAVENfswdVzE
         1gS8AJgfLHMkeg9ApvHj46Ym6tKAdlwd1fxE2jSaltuYjBgn0+vCgJnzKt5lRfFFmfKF
         gzi5F0vCqDbRkBHByWA4/I6Xe5cVQOoVpIjU4pIWiYUNJxCj2/QvSuGEsaft3yt7tush
         iUVRd0n+gSAYO0YnxgqnvcmQYQKHJAfFv3MiXpFYgd56XU/xLL8NRnPIwbFAInDG/R4O
         xG8ipWtC/m6MHD4ts4tRTMd6gGIbjJ786UcA2Yr4ra1vxbxcJCMKxl6Klor1JdeQ+l5Y
         Qn+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4gG2Qin6Mr1DYRJ76TVsVYcqR52CCXhpHK4e3ixTIKo=;
        b=mP3FaOOnHak2d67VoQGR+f1SY76wqGgbO6adBWmkOZSyu3JHl7nDhV1dnOtHQYSBlR
         g4MEKdjhMKA/OaYewtq1NbcEW+Bg4GZvuPT7QZ2A/lNXgEQOfJBl3wr9jqc1L8DtIIol
         BhJvzJ4MD3aVEobSjMKeSrpDP5N+ga2Kgh9oeiZisdJqgWn7WthTVDsk+i/2o6VrOv0S
         D6WHRwXkW1nVVexQDkdv9UUZK5gQB0niGeDnyiVLkgnG/I8TwD0JRyRr3lo2W32wtw2i
         7DpDFUmgwO5c8ZMVebI9rYw7B8Ntjmhg+5nILyd12IV0SBtrSpEeNCMu/ha9D7K3zClK
         4sJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532RSfiSO8f0xveZFydgpG97TNWJO2AnvqPU01qJj2/WSavAXSBQ
	wR/aS1Caq6Bx1o9BhjagRCk=
X-Google-Smtp-Source: ABdhPJybufZpJeBSLJyNU9ycym1vN8NJvJB8539sLy1xf8r053bjfbQluLBJnkBGCCGKjr7CoTc1dQ==
X-Received: by 2002:a63:d014:: with SMTP id z20mr227275pgf.203.1626111494224;
        Mon, 12 Jul 2021 10:38:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:805:: with SMTP id 5ls7687799pgi.8.gmail; Mon, 12 Jul
 2021 10:38:13 -0700 (PDT)
X-Received: by 2002:a63:4765:: with SMTP id w37mr251498pgk.400.1626111493745;
        Mon, 12 Jul 2021 10:38:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626111493; cv=none;
        d=google.com; s=arc-20160816;
        b=QScd3j+dFRmt9fS1dEHyiVzdwE8bTZtpnU0HpFMXO0UblIQtDTf5kS9WW4vdYQm+Vo
         YML2dfDWjhqWcutU5PqrpsiqQitgv1ZejhGmSeIb/e5Xw2T8YNYx55a0rE86IEPzLVf6
         qlaTCZZxndbUHSAOF5F0LjAoVpR2+VKhSG1O8bf3F54Moyfxyzcx0gm39adGmh2VXxVZ
         IBsy281wb92WEEKiZlIaf6OqGx9VY7Xc5EBTV/A6FywFYY9E9KQjjx7/VR7xCG/tDnjz
         D8TdPKh2zXfL6Om1TUIUhU2zeQstOs9IPydOLmp0AtrK235T4VGue1fW25U1j1SEbvQK
         Oc0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZD1hOKzyikLBWTW4ZoPnyvY2gKEeXNcSLsw+d9zA4VQ=;
        b=PBWzejtOUlOYYYg4AOs/GmtJC+VRJz2mB0wx9Ha6Fe+8CobfJu432klONriI9eFqCu
         A5JFaLB0cgiBUihNKJe6dsAbF8LX2FluMPcU0ll5MiE9FSueFFusOJ0LMP8/s9mlqopx
         eY5P/SYN8g/2sbf0/GJfydFv1MgGx8H8ptYnKoPDDDMgCVS4nomLCTOdmhL0G+O3H5M1
         FqN1VPCDbeKt2ZX5YxXyAsssw4HRCR9kpWlwqn/IR4XjuZh/ivQLYcjLViGxD6mSEciO
         OM9pL3j23Zvl1LXP9gDg/C2O3Bh+AF/PAnbgLPJ4sH+UiIjstrterdhEHwA/xG8vci/o
         Rolw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nKHhlhdR;
       spf=pass (google.com: domain of royujjal@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=royujjal@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id o2si24126pjj.1.2021.07.12.10.38.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jul 2021 10:38:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of royujjal@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Received: by mail-pf1-x42b.google.com with SMTP id a127so17067673pfa.10
        for <clang-built-linux@googlegroups.com>; Mon, 12 Jul 2021 10:38:13 -0700 (PDT)
X-Received: by 2002:aa7:8707:0:b029:306:7e78:ee7a with SMTP id b7-20020aa787070000b02903067e78ee7amr169703pfo.29.1626111493506;
        Mon, 12 Jul 2021 10:38:13 -0700 (PDT)
Received: from BALT-UROY.maxlinear.com ([115.187.60.212])
        by smtp.gmail.com with ESMTPSA id z26sm16851491pfr.31.2021.07.12.10.38.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jul 2021 10:38:13 -0700 (PDT)
From: "Roy, UjjaL" <royujjal@gmail.com>
To: Song Liu <song@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	"David S . Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Networking <netdev@vger.kernel.org>,
	BPF <bpf@vger.kernel.org>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2 bpf-nxt] Documentation/bpf: Add heading and example for extensions in filter.rst
Date: Mon, 12 Jul 2021 23:07:23 +0530
Message-Id: <20210712173723.1597-1-royujjal@gmail.com>
X-Mailer: git-send-email 2.31.1.windows.1
In-Reply-To: "Roy, UjjaL" <royujjal@gmail.com>
References: "Roy, UjjaL" <royujjal@gmail.com>
MIME-Version: 1.0
X-Original-Sender: royujjal@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nKHhlhdR;       spf=pass
 (google.com: domain of royujjal@gmail.com designates 2607:f8b0:4864:20::42b
 as permitted sender) smtp.mailfrom=royujjal@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

[1] https://www.kernel.org/doc/html/latest/bpf/

Add new heading for extensions to make it more readable. Also, add one
more example of filtering interface index for better understanding.

Signed-off-by: Roy, UjjaL <royujjal@gmail.com>
Acked-by: Song Liu <songliubraving@fb.com>
---
 Documentation/networking/filter.rst | 23 ++++++++++++++++-------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/Documentation/networking/filter.rst b/Documentation/networking/filter.rst
index 3e2221f4abe4..5f13905b12e0 100644
--- a/Documentation/networking/filter.rst
+++ b/Documentation/networking/filter.rst
@@ -320,13 +320,6 @@ Examples for low-level BPF:
   ret #-1
   drop: ret #0
 
-**(Accelerated) VLAN w/ id 10**::
-
-  ld vlan_tci
-  jneq #10, drop
-  ret #-1
-  drop: ret #0
-
 **icmp random packet sampling, 1 in 4**::
 
   ldh [12]
@@ -358,6 +351,22 @@ Examples for low-level BPF:
   bad: ret #0             /* SECCOMP_RET_KILL_THREAD */
   good: ret #0x7fff0000   /* SECCOMP_RET_ALLOW */
 
+Examples for low-level BPF extension:
+
+**Packet for interface index 13**::
+
+  ld ifidx
+  jneq #13, drop
+  ret #-1
+  drop: ret #0
+
+**(Accelerated) VLAN w/ id 10**::
+
+  ld vlan_tci
+  jneq #10, drop
+  ret #-1
+  drop: ret #0
+
 The above example code can be placed into a file (here called "foo"), and
 then be passed to the bpf_asm tool for generating opcodes, output that xt_bpf
 and cls_bpf understands and can directly be loaded with. Example with above
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210712173723.1597-1-royujjal%40gmail.com.
