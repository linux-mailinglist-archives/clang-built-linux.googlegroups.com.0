Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5OP4TWQKGQEFU7EODI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 13174E9634
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 07:04:38 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id j13sf686260oij.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Oct 2019 23:04:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572415477; cv=pass;
        d=google.com; s=arc-20160816;
        b=hB/NSlaEJ5dU8lCQmFcElS7d8kPWUbxGhMXeO70N/NL9YaP+xSEymDTcNuX9k89V7l
         AeORa9BfvAJLgeYRARctMFm/81s7cP23EiJcYF7RZ9qo668uFOPalTuVpnkwI5559alc
         qRvon4osb8pwwT31rQLzYNwZn+jV6U0pDkTr6HWaGDrpmhOV8HDDFrqOg8uDHeQWohla
         HFG+bNtY4BRG/FVaGfsHNbbfpcMqKBB9TJbHcPQZREn1DOsJYIyQcVtYYcswlmQ00909
         zIHvnQyqUD/Bdv4zZln5YeDM24oLyBw3Q7gBQvWUiEOCfoMZkcDFuDm7r5Wjq8McZlVx
         mRhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=ueezMgvKdoPrqS87HFdFzNmQIghzLZkZK1ANlGyoSJI=;
        b=OHt/Qq58Q/7klDaD8UHPCT9S6fTohiwT1lD/SHptzi3bJQlKy2kL8uAx5rcTKKuBKL
         e2AyaA2XxGUXKs0au1YZmjrPijrkirOIXRWBZlPN/AB+9UHCMxEuxGXdBh5ikqD4lzgB
         2EwD8jbF3sUMSOIwykrRSV/Z5LINyvJ7RhBCkdbhl7EMDE+KRfQwRqRwrefTI1FHoZ0S
         4evLjObZkc+hvlmWjfojQTUMc//0Gn5yckas9lxfIrXFkEs1NxQ/Y3y9noRNcxtTGOGH
         tLzFT81fekbQDgaTtUPvxVAlVWIXCp6ehSguKdUFsVP1GUFOkishEZsXmqzgYPMQ4kGO
         /jcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u2vGvNxW;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ueezMgvKdoPrqS87HFdFzNmQIghzLZkZK1ANlGyoSJI=;
        b=gjpVh+RQivxD+I7l2CWwScBDKRtf1UcvREzMqpzWLoJHwbyz656srPmMXh4GOQA/H5
         jer4NbG9oC1vA1D/iwccHWCdcKBrALNtMprCrX0xsuweyiVgJjI6ygVNik2sbcjMOt96
         cZDSpoOZgser36crIPCxuJK4qevLvMZHJAD0sENgxAp/MTCiQK3zJ9kRy38hchhm9B+W
         4lN2044yUghqPiMSF7KcLZiebxhmqE5BIImcx1tYk2FvywLRT+5culZDEfUCLLLaDlOg
         mGJfxlvoLkPrnZd6rOkoKNmKDFya7jMzAlT1YqVwRehfDUyIT/R3ZFyUSzVFAuyqdcD/
         C8LA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ueezMgvKdoPrqS87HFdFzNmQIghzLZkZK1ANlGyoSJI=;
        b=f3lPcsRClE+bnOFAeS677UaCpuccTZ2iOpp8hov2IlGs+Td91dOORsiSnAXu0Catvq
         uvT8aa9BDNvUMyNcVAdoXjDO1IfctXCQwev+Xx+e93pYvSfluriWaTN6STXCwhvUz+Cg
         Ks+il5TVWPR+m3/w1Ll4U7irEeefiXlzLo5IveBi29vrH1Az3TcOvfjU8meg3welL8KB
         pJCxFCRvXQYdMjcwicW5y6ZHjItORPeqoTe6uz6jya5Q9qCx1ZsUPfn3/R2Sl5juWQGy
         PX38D/crhUowblHE4dEnHMJLaqlVj+Zs/0v4oNz1wRk4vWaK3lra5oRDc0JTE4AAua/6
         upAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ueezMgvKdoPrqS87HFdFzNmQIghzLZkZK1ANlGyoSJI=;
        b=XLpkZNSB8pYhgAKF4ZLL1jdRIS0Xn5QY2vof2GoetXucONcWD11qZM/bHMnmyrJ1PL
         Y1tKCqbamLEHb66/NaszfPAAnVWFduABwdT1jtJ9LPp4urE1NLyLFJJoX/PL5LOdyEP4
         R9kIqgq6usQ19gy7y1dKjQQ0/EvzIh4Sey8GQpU7mZ8d7kp1ayGuz7xpP2GEditJMbmr
         mK3dZQogEhut60TRZ0Hs1V1xcDrZkXZUomXqSCE13DQ+xpgwk/TAJ8UnFEF9UJ+X7XMN
         vbgDqpeU7jmhXuH4mCaj30QcA6MUxEQ/5/nKv4J819yPmDp3ucCTcA6id/UpndluAAeB
         3uMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWWoExZEixbsoyAODMkGSc1OS4ymxWcCoTq8dn14VHBVzydjaLI
	tNyJknB+4n8s5E47FCp5XdY=
X-Google-Smtp-Source: APXvYqyRWqDE7kWYIjziLMoZKQ2B4SYvBTERKtVIUIZJ003ClHxqxhvNSYRbS6HgUMN4o6cgPFQqAA==
X-Received: by 2002:a9d:65cb:: with SMTP id z11mr8049458oth.195.1572415477082;
        Tue, 29 Oct 2019 23:04:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d410:: with SMTP id l16ls1597930oig.2.gmail; Tue, 29 Oct
 2019 23:04:36 -0700 (PDT)
X-Received: by 2002:aca:fd15:: with SMTP id b21mr7418908oii.11.1572415476594;
        Tue, 29 Oct 2019 23:04:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572415476; cv=none;
        d=google.com; s=arc-20160816;
        b=UURx4SwpPobybV77YaVolcB7NiWEMRNT1DhWjhSkg//jN9rZVEp3VkBP+zOMfW+t2K
         XLQGp0vscLmHra0xX/M9g0ZtOxERV27wnM1OJt+pf1k8S/eoV0SlcafDn1P7i3D/UMkM
         8JcvvL7gRvv1HxYjOSg+i0dRwY6yc0Bogq2ecBW5zFheW1K9sB8qtYb72cKNCYG7a7R7
         hyzqeXbx9ymjkGxwsJym//xKVCqTwXhO5UPw+Gy6lsLYGIQ3KqgLaaRDrtEPSEAV6XNC
         BI1asM7USgD+m/RgmzF/fNiNWxZMT1U4pn4Pr4vEuOhoELChxh92obIFOugjFIOMXrYY
         CThA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=MYUu1o7Gjm7ckCy0ST4zrokOEsSb5X/Ix76ieyroiBg=;
        b=zEAtBXDJRym9Yn/NUP8pLPJzk9fECT5BbcK8i0ilbPZ7x87fOn3mb5TQm5loBf60aI
         q3IqusWOSHFh0YXof1rwbHXDF9dJNfvNmyi/n+ZiyZxKezGq+OxKx2nb0izXeRryanGw
         hylk7sIVffymlMBmhEST1qrd7ALYJ7KUYghfQyRkYNE2yuze3LYq5mgcyBQKJupWH9m8
         FNd+V0E9w7f+qDhkI124LOPsdMZgJ2APDW+NP+yFMvg/YDLTs1hPiHs6bLVGcO5MBZHN
         oI3IFnVtn1LIry4q2X4NnLoG0y44jmiII16KGw+VVhjIoVcpoAGgqkM6T4TOZKyFyIYY
         bQAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u2vGvNxW;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id c19si65373oto.3.2019.10.29.23.04.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 23:04:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id u13so1131137ote.0
        for <clang-built-linux@googlegroups.com>; Tue, 29 Oct 2019 23:04:36 -0700 (PDT)
X-Received: by 2002:a9d:82e:: with SMTP id 43mr21630303oty.23.1572415475989;
        Tue, 29 Oct 2019 23:04:35 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 34sm472147otf.55.2019.10.29.23.04.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2019 23:04:35 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Harry Wentland <harry.wentland@amd.com>,
	Leo Li <sunpeng.li@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>
Cc: Roman Li <Roman.Li@amd.com>,
	Nicholas Kazlauskas <Nicholas.Kazlauskas@amd.com>,
	amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH -next] drm/amd/display: Add a conversion function for transmitter and phy_id enums
Date: Tue, 29 Oct 2019 23:04:11 -0700
Message-Id: <20191030060411.21168-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=u2vGvNxW;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns:

../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c:2520:42:
error: implicit conversion from enumeration type 'enum transmitter' to
different enumeration type 'enum physical_phy_id'
[-Werror,-Wenum-conversion]
        psr_context->smuPhyId = link->link_enc->transmitter;
                              ~ ~~~~~~~~~~~~~~~~^~~~~~~~~~~
1 error generated.

As the comment above this assignment states, this is intentional. To
match previous warnings of this nature, add a conversion function that
explicitly converts between the enums and warns when there is a
mismatch.

See commit 828cfa29093f ("drm/amdgpu: Fix amdgpu ras to ta enums
conversion") and commit d9ec5cfd5a2e ("drm/amd/display: Use switch table
for dc_to_smu_clock_type") for previous examples of this.

Fixes: e0d08a40a63b ("drm/amd/display: Add debugfs entry for reading psr state")
Link: https://github.com/ClangBuiltLinux/linux/issues/758
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/gpu/drm/amd/display/dc/core/dc_link.c | 38 ++++++++++++++++++-
 1 file changed, 37 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/display/dc/core/dc_link.c b/drivers/gpu/drm/amd/display/dc/core/dc_link.c
index 7b18087be585..38dfe460e13b 100644
--- a/drivers/gpu/drm/amd/display/dc/core/dc_link.c
+++ b/drivers/gpu/drm/amd/display/dc/core/dc_link.c
@@ -2447,6 +2447,41 @@ bool dc_link_get_psr_state(const struct dc_link *link, uint32_t *psr_state)
 	return true;
 }
 
+static inline enum physical_phy_id
+transmitter_to_phy_id(enum transmitter transmitter_value)
+{
+	switch (transmitter_value) {
+	case TRANSMITTER_UNIPHY_A:
+		return PHYLD_0;
+	case TRANSMITTER_UNIPHY_B:
+		return PHYLD_1;
+	case TRANSMITTER_UNIPHY_C:
+		return PHYLD_2;
+	case TRANSMITTER_UNIPHY_D:
+		return PHYLD_3;
+	case TRANSMITTER_UNIPHY_E:
+		return PHYLD_4;
+	case TRANSMITTER_UNIPHY_F:
+		return PHYLD_5;
+	case TRANSMITTER_NUTMEG_CRT:
+		return PHYLD_6;
+	case TRANSMITTER_TRAVIS_CRT:
+		return PHYLD_7;
+	case TRANSMITTER_TRAVIS_LCD:
+		return PHYLD_8;
+	case TRANSMITTER_UNIPHY_G:
+		return PHYLD_9;
+	case TRANSMITTER_COUNT:
+		return PHYLD_COUNT;
+	case TRANSMITTER_UNKNOWN:
+		return PHYLD_UNKNOWN;
+	default:
+		WARN_ONCE(1, "Unknown transmitter value %d\n",
+			  transmitter_value);
+		return PHYLD_0;
+	}
+}
+
 bool dc_link_setup_psr(struct dc_link *link,
 		const struct dc_stream_state *stream, struct psr_config *psr_config,
 		struct psr_context *psr_context)
@@ -2517,7 +2552,8 @@ bool dc_link_setup_psr(struct dc_link *link,
 	/* Hardcoded for now.  Can be Pcie or Uniphy (or Unknown)*/
 	psr_context->phyType = PHY_TYPE_UNIPHY;
 	/*PhyId is associated with the transmitter id*/
-	psr_context->smuPhyId = link->link_enc->transmitter;
+	psr_context->smuPhyId =
+		transmitter_to_phy_id(link->link_enc->transmitter);
 
 	psr_context->crtcTimingVerticalTotal = stream->timing.v_total;
 	psr_context->vsyncRateHz = div64_u64(div64_u64((stream->
-- 
2.24.0.rc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191030060411.21168-1-natechancellor%40gmail.com.
