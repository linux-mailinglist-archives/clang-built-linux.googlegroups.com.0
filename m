Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYUO43XAKGQEIXX34AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE1F10801F
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 Nov 2019 20:24:20 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id f20sf6741698pfn.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 23 Nov 2019 11:24:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574537059; cv=pass;
        d=google.com; s=arc-20160816;
        b=fNvCcM2hwMborRdPyxxAYBeH97uq5+9qPP5o0BZZ8Uh2ILwPVZFSkBB+K9VSA6HVNv
         ixlV5r398r6dLXxauKnq0djx58eBDxDWKeYT7GqF5ZynLXvnsBdxFh342bJsudRgrOuZ
         BElcmdg5M6FvTruLYem0XVe0Uen+P1U1ZgX1L0H1O6d78mySliOD6XlmVf0UpqTGIWgO
         nFlJlzlBno0FZOtsSO3x+5MOiteVkXRu3VsASgza0FYSCUxf6kjr0PRpkpUiVF8M8cFi
         O9/QycTTRTkBPO4pvqaLjJ78Q42mZH4uK/47hJOVHmvnwc3xkXv6q+ighmtUdt6Jn/WS
         jXvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=H0EoPveYqtUp3OwGo+q6gBQl6ukYvBtNgMiJJ+/NNyE=;
        b=dYdsnBPjbsDn6UUy1ItTJyJC98nheHaoP8jhQmPvb1DSVMo40xElw9OvjIDK62mzBp
         OMaJf6tq6fBIuPJKmNOkDyBPQ948YLTjji0f0ILrv3+STDJHhNkccmOcN3x6qU1wXzYJ
         deivBk+WlWq1Wn7H+8HVxTU1OwvBcANfTENqMLXGU8dUcL6T9wJHH9vYEE6BuILfUPb/
         uTkysR8K157rITMKvDmmVaLUe/Nkvt8yFYyNwuzzw/j/T1kGeQdS201KG8oxqWMCdiUK
         6ssBVmGfx7rTMbKHULZd/gIcVcNSO3ehoaya8GoWayypHpYFrJjWSqse1CFGQCuxFsvl
         Uplg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DhKMGXay;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H0EoPveYqtUp3OwGo+q6gBQl6ukYvBtNgMiJJ+/NNyE=;
        b=k8Oc8UNmdZ400BEgl9Yo3NNZcnUSZx5dU/j2XNwTy0JXleOTjw+P2vXcn4C8V+hVXp
         hZiRkOAS9aUjRyGJY0O2pSEi0IrqQmpkVRYNyb1uPf6mCyTTZ4AEHVWKd15zdPDubBUn
         /6GZA/YuJDTQZrnQXZpjyG2XpxfMEIG/57ZJ3LHHQBJ21tj8/nH8cR+m7/4jvz1IcoTf
         xOh6oIBfEVpUFMtTpAiSL0xOdx1G8ION8UcEBsR6Fk1nz8c7px2OGP5YvTVzbI6gFeFg
         E64QGV7qMw5joAOStGCUegbPL5iSxJMAwMs/vyzv0kw2W/XJ3uRrr5zqsRlhO1xlNNde
         EQMA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H0EoPveYqtUp3OwGo+q6gBQl6ukYvBtNgMiJJ+/NNyE=;
        b=cbzxhw9dMsBtKxQrrdufUjsCjI8w5O+HEnIewB3jfjjbKHfbqdjNII2HVgYVx/AC6j
         Q6wGoMIrMYF1UuQkp+lkJkSxxRfwNQM2dUqfbEuGK9d5r+ZL7zC4TZMuI6hZkanvh8Zg
         FXrqwIiFgJU5DkePGPXKVau1OnHapX8w0qDU9W3vS2FDZ3xeNZnuWXlc4G6prObXYsl0
         0vbelM9zhzmERoKYMqHZhyxJD9PCSQBnEe+vO1Zmd2p/7eaxTEE8+6EKwv+y0/C9C+qC
         CvvK+gJ6myZ8LyxHIJGyq91MGhnO+x9QC3J4U8HCBheRayv3qWbmbaTu9eSqzNtXnkdu
         cUtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H0EoPveYqtUp3OwGo+q6gBQl6ukYvBtNgMiJJ+/NNyE=;
        b=Q6crFo4R4x/xZQjXW9UK3O7k6/zo95shkN82aUGa+1JjxIAfhEnqZfsZ0uNIoJtphJ
         xfIHsy542F4ESAixi+Wk8xZhMpebkLaIGiP6JH1XqEGauLoCi/xeSnh3pPLiGV4H4Qbt
         AT3bUsnqSVeHo1NgQODSQpswktvUctkFt7gEf+iODmb8TvgaI1QSGWBjlCI1KBoTkdC9
         LEDX+GcaH+1pEEAgLN0M9iZ+G+RTwhc4ejq/LiB8qlVxzBFXi8GGGNH4WaFGdRl9jutE
         /Xfz9gAXhJqvCr5YhD3IM8hhM3F9ic6U7aWMgFu3eRGGXbZS7Nm8CaV/pW59IWB6gUFU
         +gLQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW3zFvaKwnmmmNPvU/tWRgmBxC/cEBetWFYiYkP/xc7hL/oshVL
	j8RLoo4FEDL1zZYfmQE50E4=
X-Google-Smtp-Source: APXvYqxVNDBJP6R/+hgMYmGOL/TSTd8FwNusFgUTNPo28niBtrELLHgifQyZpfNlkMqr0XUV2U68HA==
X-Received: by 2002:a17:90a:c256:: with SMTP id d22mr6433617pjx.124.1574537058644;
        Sat, 23 Nov 2019 11:24:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a982:: with SMTP id bh2ls3066771plb.9.gmail; Sat, 23
 Nov 2019 11:24:18 -0800 (PST)
X-Received: by 2002:a17:902:7586:: with SMTP id j6mr20630403pll.43.1574537058181;
        Sat, 23 Nov 2019 11:24:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574537058; cv=none;
        d=google.com; s=arc-20160816;
        b=FsK+OoHh/fbAi/18ocKhT3dAUs+yQG/vsTSm/cpYBqcTaX35tj6OFoDUT7PwUgBuHh
         g0dDidj6UrJYLlyhrDFODYy5j430HrsvxFp8rG1G2MVGvTQn7sEsat1mMX2+oemcro+g
         aSe3ZphohLGkPh1ppedPF9f4ILMIKufaaYcgVKUaTOo+lNUcJkNOFDuWrh0bgBn8r635
         5b+0ZnpVk8PcoVj68K1IBzMdypDwpCo/QoozZQjSP9k4Q9XtZUcHO8Zxer+CY2J5a/6A
         zZEVJM/v8R09ZW61pZXFJBdHzSggR3O43TWYJb4T1WcHBW4Y8B9bgnCrmkN4Ze2oDAgF
         w4kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=jsgedYWGcDm2gsEfcO7YvCurfXqqqHvXcUgzb0SkXvE=;
        b=P9lYkC+WCjJPtMoOY3tAY+U1QBp6um2/42VveaQlkm5aH6gl2CS896hliNDnKhQ+zO
         EtqFnve/DTm0jJTx4LTYiqhUKlENW4+Jp0o1F+jLFCeA1QWzAIxs/VaO46hvyqe1t6UK
         DEpHb0cxBdptCZ+8a883oDA9RXRnDRC1zGXMblhsaZaH5qJ5He7RsTml19HVxnEQKuoT
         Cklvko0W+DpkMYJzENnA3SosTxxSm795UnQPc/5tW1Kn1lijntP1VosgMN2DtFRKyj8v
         Sat6wHu7po1ynXCiwpo/x8HjWcHZlgbMnx4HzD8lZVtQqZNAeMugug8usxOBeRCwDu4e
         fSaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DhKMGXay;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id j19si54348pff.4.2019.11.23.11.24.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Nov 2019 11:24:18 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id 23so7391718otf.2
        for <clang-built-linux@googlegroups.com>; Sat, 23 Nov 2019 11:24:18 -0800 (PST)
X-Received: by 2002:a9d:37cb:: with SMTP id x69mr14555138otb.90.1574537057333;
        Sat, 23 Nov 2019 11:24:17 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::7])
        by smtp.gmail.com with ESMTPSA id i12sm549134ota.10.2019.11.23.11.24.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Nov 2019 11:24:16 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>
Cc: amd-gfx@lists.freedesktop.org,
	Leo Liu <leo.liu@amd.com>,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] drm/amdgpu: Ensure ret is always initialized when using SOC15_WAIT_ON_RREG
Date: Sat, 23 Nov 2019 12:23:36 -0700
Message-Id: <20191123192336.11678-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DhKMGXay;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Commit b0f3cd3191cd ("drm/amdgpu: remove unnecessary JPEG2.0 code from
VCN2.0") introduced a new clang warning in the vcn_v2_0_stop function:

../drivers/gpu/drm/amd/amdgpu/vcn_v2_0.c:1082:2: warning: variable 'r'
is used uninitialized whenever 'while' loop exits because its condition
is false [-Wsometimes-uninitialized]
        SOC15_WAIT_ON_RREG(VCN, 0, mmUVD_STATUS, UVD_STATUS__IDLE, 0x7, r);
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/gpu/drm/amd/amdgpu/../amdgpu/soc15_common.h:55:10: note:
expanded from macro 'SOC15_WAIT_ON_RREG'
                while ((tmp_ & (mask)) != (expected_value)) {   \
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/gpu/drm/amd/amdgpu/vcn_v2_0.c:1083:6: note: uninitialized use
occurs here
        if (r)
            ^
../drivers/gpu/drm/amd/amdgpu/vcn_v2_0.c:1082:2: note: remove the
condition if it is always true
        SOC15_WAIT_ON_RREG(VCN, 0, mmUVD_STATUS, UVD_STATUS__IDLE, 0x7, r);
        ^
../drivers/gpu/drm/amd/amdgpu/../amdgpu/soc15_common.h:55:10: note:
expanded from macro 'SOC15_WAIT_ON_RREG'
                while ((tmp_ & (mask)) != (expected_value)) {   \
                       ^
../drivers/gpu/drm/amd/amdgpu/vcn_v2_0.c:1072:7: note: initialize the
variable 'r' to silence this warning
        int r;
             ^
              = 0
1 warning generated.

To prevent warnings like this from happening in the future, make the
SOC15_WAIT_ON_RREG macro initialize its ret variable before the while
loop that can time out. This macro's return value is always checked so
it should set ret in both the success and fail path.

Link: https://github.com/ClangBuiltLinux/linux/issues/776
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/gpu/drm/amd/amdgpu/soc15_common.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/amd/amdgpu/soc15_common.h b/drivers/gpu/drm/amd/amdgpu/soc15_common.h
index 839f186e1182..19e870c79896 100644
--- a/drivers/gpu/drm/amd/amdgpu/soc15_common.h
+++ b/drivers/gpu/drm/amd/amdgpu/soc15_common.h
@@ -52,6 +52,7 @@
 		uint32_t old_ = 0;	\
 		uint32_t tmp_ = RREG32(adev->reg_offset[ip##_HWIP][inst][reg##_BASE_IDX] + reg); \
 		uint32_t loop = adev->usec_timeout;		\
+		ret = 0;					\
 		while ((tmp_ & (mask)) != (expected_value)) {	\
 			if (old_ != tmp_) {			\
 				loop = adev->usec_timeout;	\
-- 
2.24.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191123192336.11678-1-natechancellor%40gmail.com.
