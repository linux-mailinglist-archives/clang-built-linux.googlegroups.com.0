Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBK4Z77WAKGQE4YLP6KY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 86057D35C9
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 02:28:27 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id j10sf1374273lja.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 17:28:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570753707; cv=pass;
        d=google.com; s=arc-20160816;
        b=nMSWfbP+Vfxkoyd/Be7gngWi1xfWwqymCPe7cNPJskchYy9EVSQsya9pGSj+bhEy1V
         /Z07+I+kGs1rC/geUnA+5HQEvkFZxEa8PyfcYS2agc53KKZzFIYyhreylWcnzkem9IfC
         hRvbcFP9WneG7B/WRy5+Co3aLPicq/xkC7RGxE917N+Brlv0JH21wUIGyGlJCt7TaZT4
         gm1QA+TgVM2ruYZ0tHM/lOzYY5hy5VdjY62UpyD2f1WaDPmsIU5Mz785kPVEJsqy47ms
         cRuNJBVCTzJnnTv0ZXhcJg70gezMZ2OsS3DN0wYp9xQREykKzWtYIGWfsbpAppQcKEld
         ypSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=E+GX07kCfgXRLjMVTAn1DtNPwYxMrJMO0KnBGGQbNJs=;
        b=YxTLjfMODkHOTApYPar7HJPAHmuee1rlLt0aS2ROiLtNeZwDDi7MaY3lckuw+EqpwH
         eOvVQ9XzucyqjpnuS7zv29rMoCE6HTI9gQZj9gJ0C/4aD+r/OL+yUNcUN5BVrv+Ow02f
         7f9ayaxYSVdhiX+8YT2GvEyc7IyvGUKpDpIacM1SQ0W1TNDMTjmNeRvygjk3yTm83n/H
         Hxes9a5Tcip1wy0iR9IvIDTUtLUHiqS5W8623Ggjpm7ZG1cWaIOfiy3Osv7107OHLaW9
         r5wH0wB4685HkM/ajvbcDMyeGR1FjTV01spZuHo5pUWqKY1wunL8Yj09vwzZY+e6jDcq
         rMeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ARrbso8c;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E+GX07kCfgXRLjMVTAn1DtNPwYxMrJMO0KnBGGQbNJs=;
        b=Bmf2QumQ4TkPVyW+fwQtuzemzAee6vvDRmPJ3ty5R5b71XGIlYOxulMuaKOYfDLmew
         LXJf0emmsC4qyT4I2zrCMuz3W5fLR+ZLOz6lFFHYv9Up+2BtLm1F2c0Lp3k+Ug3UFs1V
         Zh065cIDD4TMiGmVVNjyuQ0LkhF++hYwqwmaYTJ3kSh37lmoD9fbKqyhi37eVoljQGnZ
         7rOwvOtEGB/abAcXiSVtGfn2asTDDF44SBn2P9kC7BDdMGhSkZdIIx/dYNSNhT2iyJH7
         tTQYAHcLZYe+AOvTRSH5xfDjCazSHnWPHdKt6CI3E/kKlAISEY/X9DkXrLTv9ZfIC9Il
         rHBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E+GX07kCfgXRLjMVTAn1DtNPwYxMrJMO0KnBGGQbNJs=;
        b=tVgYQY73wwG8I984nbw/HY8QmcMcI3vHebtsYtZp3MVHKmHyaDXYduuS2K45vMIduS
         y00bxXCfJVJDBCRHWjuDCF/n2CwKX4sqkzwl0KK98SZR22KlM++Bj4F84NTbsc6gFNL6
         jbWYeDvKKwV11gulzfTWLwWq60NtXT1QwvkK1PwKfLpYPfpr0F7arRNf8w086Orooz6H
         wGIIEG0ogge90cCHjFvgdMstjYE4ZOiQNH6g6wnMbH9YW48DM4l36OzSDgg6lktng9aK
         nAgNL4uwHxqzOCpzpDMG1E1E+mJZ9NfWswihCZqrHMha62MR845LqYh/X0kD7uMkRe5W
         FJiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXTFyRBsDpz5Xdp+wyB0oHGlYsCAuWJ145iGPOOZJsgk+1BG1KV
	pTlgyg9y0zVN/ZFA5VOWlGQ=
X-Google-Smtp-Source: APXvYqxFDmbO06XXga8Bq4grXMFYZYF+vpS4c0r2JQcyFUYn/5EpwKZdlDR0LzXPUc+tWwQ5Wg2cGQ==
X-Received: by 2002:ac2:4a83:: with SMTP id l3mr7409462lfp.73.1570753707153;
        Thu, 10 Oct 2019 17:28:27 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9d44:: with SMTP id y4ls738985ljj.4.gmail; Thu, 10 Oct
 2019 17:28:26 -0700 (PDT)
X-Received: by 2002:a2e:878a:: with SMTP id n10mr7966511lji.229.1570753706626;
        Thu, 10 Oct 2019 17:28:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570753706; cv=none;
        d=google.com; s=arc-20160816;
        b=zTeuzElV2dwpB7c6XlvN4NNovyQHLav7Wx6oAw8Q4HM2OyBDdpqZMj42gfK93YVvzd
         qmiGiDqBhNaDRs+T7nJDuznkKBAYPXQrEEENzymBxYgskbcmiOMN1CkiyfJeUJPYhpuT
         vYj1A/NcsorgifSWNe7LknCA4dCHPGnvDFyigzgP4QnfBq7Uq/ZPG6B2QKkwASqYyhkE
         vSwA13tVZAAtiZT9RhEdUCX+vmognPesYZo7FBc81jH2UE83Mrt7V6Xy4qcp4KxCoG6f
         apJWA14/OR2VY9H+rhBpUEbnp+zgKM8/kLM0kIPkoiByFT0cuXVKN7bmE1TIWYzMbrnc
         WSNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=j9oehlPvbpQ/3mUr7ILsjkWG9P4RuU3Cq2akh+BGeG4=;
        b=VQBKUsPxqVq0x8ESXfYWRpDDL8v6AWrDxXTLobYTqxNn35lEQ87+huD6JrOJzqCkJW
         cFqFSw1sMkY73D8wCnt/zgUDzKMnpOYsoj6G/F81EHOaOybeuMI+L8Tl54OkU3BhSzAG
         M3L7K5p/lASEBZCM3qYixhllSAcHjtlaW4Se3Jmc5k/vQ4kqxMUlcuUbq9iotkg/n8MH
         WAYmdcw+59nwm89FejMGOYCGGpIpvcLd6ckHjPXYRv1bKc3Fj5wH2IEvzFuoxQFSKr9p
         IVUr3MP1K1PiBa8wfL2wETk66MbOxLG7/P4dm0PpTEF+nSjSW5DhbyLz/E41aE92GfNg
         A7Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ARrbso8c;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id a9si62016lfk.5.2019.10.10.17.28.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 17:28:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id f5so8028719ljg.8
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 17:28:26 -0700 (PDT)
X-Received: by 2002:a2e:8183:: with SMTP id e3mr7876486ljg.14.1570753706383;
        Thu, 10 Oct 2019 17:28:26 -0700 (PDT)
Received: from localhost.localdomain (88-201-94-178.pool.ukrtel.net. [178.94.201.88])
        by smtp.gmail.com with ESMTPSA id 126sm2367010lfh.45.2019.10.10.17.28.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 17:28:25 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	ilias.apalodimas@linaro.org,
	sergei.shtylyov@cogentembedded.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH v5 bpf-next 04/15] samples/bpf: use own EXTRA_CFLAGS for clang commands
Date: Fri, 11 Oct 2019 03:27:57 +0300
Message-Id: <20191011002808.28206-5-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ARrbso8c;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

It can overlap with CFLAGS used for libraries built with gcc if
not now then in next patches. Correct it here for simplicity.

Acked-by: Andrii Nakryiko <andriin@fb.com>
Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 9c8c9872004d..cf882e43648a 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -218,10 +218,10 @@ BTF_LLVM_PROBE := $(shell echo "int main() { return 0; }" | \
 			  /bin/rm -f ./llvm_btf_verify.o)
 
 ifneq ($(BTF_LLVM_PROBE),)
-	EXTRA_CFLAGS += -g
+	BPF_EXTRA_CFLAGS += -g
 else
 ifneq ($(and $(BTF_LLC_PROBE),$(BTF_PAHOLE_PROBE),$(BTF_OBJCOPY_PROBE)),)
-	EXTRA_CFLAGS += -g
+	BPF_EXTRA_CFLAGS += -g
 	LLC_FLAGS += -mattr=dwarfris
 	DWARF2BTF = y
 endif
@@ -280,8 +280,9 @@ $(obj)/hbm_edt_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
 # useless for BPF samples.
 $(obj)/%.o: $(src)/%.c
 	@echo "  CLANG-bpf " $@
-	$(Q)$(CLANG) $(NOSTDINC_FLAGS) $(LINUXINCLUDE) $(EXTRA_CFLAGS) -I$(obj) \
-		-I$(srctree)/tools/testing/selftests/bpf/ -I$(srctree)/tools/lib/bpf/ \
+	$(Q)$(CLANG) $(NOSTDINC_FLAGS) $(LINUXINCLUDE) $(BPF_EXTRA_CFLAGS) \
+		-I$(obj) -I$(srctree)/tools/testing/selftests/bpf/ \
+		-I$(srctree)/tools/lib/bpf/ \
 		-D__KERNEL__ -D__BPF_TRACING__ -Wno-unused-value -Wno-pointer-sign \
 		-D__TARGET_ARCH_$(SRCARCH) -Wno-compare-distinct-pointer-types \
 		-Wno-gnu-variable-sized-type-not-at-end \
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011002808.28206-5-ivan.khoronzhuk%40linaro.org.
