Return-Path: <clang-built-linux+bncBCM33EFK7EJRBKORS32AKGQENI2Y5FY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id D05E619BE39
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 10:56:09 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id p12sf1002459wmi.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 01:56:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585817769; cv=pass;
        d=google.com; s=arc-20160816;
        b=kaX0zRyRT1DEA958R+ITxS7/F/mbVRTgrD97LCD3tN6dn8Z5lnrAc9fTbQgY8tNxKR
         V9dxaRJhsBH3IVmqjJNAynd5szekzfJ8BL97qvyECJwmu7qOY+OdlmD459H7E+mplmw0
         aACOuW6Knz6VGaJLbvOe7mkbIrMR5j7RDBnkrFKQrvfmmovIkOPPl+2XACiCohxU2QDI
         Tz8X4Bi84pn6XoKdS1iElovc/CdyOC66HtuQmJdxnnyJqa6N+nnon4dxcLNpnzUjTx3f
         RHko15YZ6mhmdYeZKs2VsVVqH3FkpPn1qVJ7heqAiXQamm/euP+VUt4yLfq9ChgWGYh8
         ll+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=jz1FOHv1Wc+F/Z7tz2WZjbuLzzU2l6JNlTBiDl6/P9k=;
        b=eI78TFCOHjK9pvdl3VVYsQbBd7WXTguS+OMUl6Qi2rNossSqyOGo5uLR1PJN34LGnC
         Lr9VFelAnaeD1sqq/OPbrSNvR1FU5BO2KcjDU0pipjPc9el2gqYQBkg/IvI7FwHNY/F4
         NMuS/olbvs/PJePwhd10wcxOSGptQtx22sosm/KX/MvS3mSFID1Z2hHljMp0sRNB/9Ly
         Mmujh77Xj64NWRprl0liguG58qssGIiCvOPI59Wf/ntUoTv8UHpBzgFnL+hXurPSUvba
         WJ80thlup98Q7Pa5uQohtDy6hUSJorGVgBZ4YAfscoo/zD0JvLFs1agahQc0Zy6aOIDt
         7YGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ToyxyR6+;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jz1FOHv1Wc+F/Z7tz2WZjbuLzzU2l6JNlTBiDl6/P9k=;
        b=gn3iwydT1gnFbUBc1DJThdkvHX8D5YfAK9VA8B0BE1KcMzgy6NvP7IehTG+As+m4lA
         AGmq6TUgeIWfcfc5ZGqorAmCKcaawQTYQ2+767t3gQp30aOAaoLVOoJzALIaAKjvhhx6
         N9ooAvzDuPqTzu4iXqAIdvQcKl7IdLdg8WagsbvgmvdlrqwM0z9qBqzl3JhPdHqJ3jiq
         YIw2tCKOY1LN/qRzXYHiY3vCmilnGmUoYbSuZPSv8Ys5buO+tFjG4QYbQkfIad0ZkWZL
         Op4KUvDceGzLxDXZPr/iugvUpqlIu4mICYegk5zICks8lImeW6hVw2T0IkZVeFAH7gee
         zsMg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jz1FOHv1Wc+F/Z7tz2WZjbuLzzU2l6JNlTBiDl6/P9k=;
        b=MlvFAiclbx17a0Wm3xfEKzjIWD/YrjWxRVxNeA2KBUgPir6citWsS55e51BVgQ/i2y
         i1W36J+fZy9d5hzjHq49t6tdcGQlFz5p++82vkzCTwjkEI4SOP6fDWbqrFiVEkmXfrnP
         GJsZoOFcm7T/42mk41oEGT6UZ1Ygjs7+gN6dG3zt0xiMLl+qY+La9NHGMA5XbTlUA+3E
         i14mfh/clShs38Sf/z7vn8Toj/1jpfruLojE/1BUmxyJ+anhcPjcOy3X66eKfD3uDxTS
         SXIKGa5yILm7DFVJ7Tae1xOoC5KdKehxREzp3tGaqIMNyq2nyMss38esyPbOrAXC9tQJ
         qylA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jz1FOHv1Wc+F/Z7tz2WZjbuLzzU2l6JNlTBiDl6/P9k=;
        b=ixRC2mCCNYyVMFsjp1+gfBJwhPmh3FesCFxZtaJaC6giJH46sYTEG5BlLPpXxHqqnv
         Qmf/Zb2Q0P+/irBpJ9PqERxMPbnlT+o1en7GlSKR9607fqB4MbAUC+T/RyM8hXtu8m0W
         L0d9TvtNPTXGd0tQdlqG6iZNdGh7fzQizroj5Yj8l/hLKGAChIz/t0gSTMN51MjcZAmB
         joKtzOktitqB4UPIllllWEJDwRkUhKcGYI8W4QYLx7zVbu/pAZ0vXm2Q4cektU5mXKGy
         SFT/q57+zQSkbUWnn5vZc9NmS+ZREU20s3Bp8WkpAz/43bS52t1M6c7NA+zkFs+stAUp
         zCnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ8oqNlislxcPvl9weA5NJe5/8wef+WmVN+eer6kFRFXp6sHwXe
	NyzSH2OOgy3LY6agqGRQ73A=
X-Google-Smtp-Source: APiQypIOORjKo/fjgvpsWrtCmUI4yLCVurNVE9fewfOLiOO+J7fAI69na+uaxlh+JX57B9iIPyfcZw==
X-Received: by 2002:a1c:2d8b:: with SMTP id t133mr2478865wmt.131.1585817769566;
        Thu, 02 Apr 2020 01:56:09 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:6402:: with SMTP id y2ls924654wmb.1.canary-gmail; Thu,
 02 Apr 2020 01:56:08 -0700 (PDT)
X-Received: by 2002:a1c:5a54:: with SMTP id o81mr2440928wmb.61.1585817768862;
        Thu, 02 Apr 2020 01:56:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585817768; cv=none;
        d=google.com; s=arc-20160816;
        b=UDjJ6hOcQE3N03BMUs6CdOcgqZCXby64IaHOwhsO1NcbhodLJN5+UDa6CPrRS8uMPD
         1VBvlTTiD36JVyRjV463h2dghPxRPJ8d2mc7xGuMGWTrCKAfI3Oa+6rudKhWVjGdh22i
         KgaSpploTr5Akma6w8H61zIFG6F5d2g7+9EYOD3CU7Rv38A+nnP61N+pdEmOJqxI0QuA
         KJhyOeYsRwMRHmSLSz+ju1G3t5JxDz/UAE2qV0R6f/c2QoG/3ctm2S1kLi7hcxlZ8aYx
         kZ81bleasLQkTeoY2aK9Ezw2Npdk8S+zZ5QZYzAW0jdjLMSzmbDPEez3RHw7LW6Jhs5c
         rjbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=h09wq+dScd3G1lPfYna5Eel+LXgpSjdYtjatbyrFm9Y=;
        b=ky1t3KSuuvS7A2hD1ziVyo/n8GcdaMfF8LsENhuUh4IwsPIOrOJ3eInJgsWx8QnZUD
         pA+/PJny9fOkOF/KX4xc7oQjbERTodhylRmtlRF0gvv4duCR8UYFiSjr4ydQDOBxxdV9
         Kbr/TgJwcJ1asCfML03aPFCYwTdhn1nh48CyB4FgU0ew09CENgEdvw28/bAcSRsZuA8p
         hf6421XzQilel+OWudqRkxPwsOAM+YRYPJYe9I5iAcKk6jj3qiWTUXN1U1w9QG6E1/00
         rfq5Mnk/UZgq7eeLV9PEXriKWs2AglBTPlguexe5KbozpUVH5LkHLHyUHiafC/jruNUG
         Z9rA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ToyxyR6+;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id z18si31478wrn.0.2020.04.02.01.56.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 01:56:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id 91so1249709wri.10
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 01:56:08 -0700 (PDT)
X-Received: by 2002:a5d:6b8b:: with SMTP id n11mr2259268wrx.379.1585817768538;
        Thu, 02 Apr 2020 01:56:08 -0700 (PDT)
Received: from localhost.localdomain ([2a02:a58:8532:8700:29b9:31c4:8247:2806])
        by smtp.gmail.com with ESMTPSA id a13sm6584160wrh.80.2020.04.02.01.56.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2020 01:56:07 -0700 (PDT)
From: Ilie Halip <ilie.halip@gmail.com>
To: linux-riscv@lists.infradead.org
Cc: Ilie Halip <ilie.halip@gmail.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mao Han <han_mao@c-sky.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] riscv: fix vdso build with lld
Date: Thu,  2 Apr 2020 11:55:58 +0300
Message-Id: <20200402085559.24865-1-ilie.halip@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: ilie.halip@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ToyxyR6+;       spf=pass
 (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::443
 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;       dmarc=pass
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

When building with the LLVM linker this error occurrs:
    LD      arch/riscv/kernel/vdso/vdso-syms.o
  ld.lld: error: no input files

This happens because the lld treats -R as an alias to -rpath, as opposed
to ld where -R means --just-symbols.

Use the long option name for compatibility between the two.

Link: https://github.com/ClangBuiltLinux/linux/issues/805
Reported-by: Dmitry Golovin <dima@golovin.in>
Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
---
 arch/riscv/kernel/vdso/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
index 33b16f4212f7..19f7b9ea10ab 100644
--- a/arch/riscv/kernel/vdso/Makefile
+++ b/arch/riscv/kernel/vdso/Makefile
@@ -41,7 +41,8 @@ SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
 $(obj)/vdso-dummy.o: $(src)/vdso.lds $(obj)/rt_sigreturn.o FORCE
 	$(call if_changed,vdsold)
 
-LDFLAGS_vdso-syms.o := -r -R
+# lld aliases -R to -rpath; use the longer option name
+LDFLAGS_vdso-syms.o := -r --just-symbols
 $(obj)/vdso-syms.o: $(obj)/vdso-dummy.o FORCE
 	$(call if_changed,ld)
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200402085559.24865-1-ilie.halip%40gmail.com.
