Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJ5AU35QKGQEOLOVTHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C05273A5B
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 07:48:25 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id g8sf10444482pfq.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 22:48:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600753703; cv=pass;
        d=google.com; s=arc-20160816;
        b=bj5vCYswgivqfypXgHqaKi/rS/GqrLMj095pItL3OcA1A0xvEjYc4zIlkFkeds6u/V
         aVyxNZupQWXnq9EAWrDyMcVTfDwaKO6/U3RQUJy+YYTkUoAo2zlEkmX+FMOvFhHr9J6k
         Jnt0wHdv26dTBVZe7Z03iNjH4TsygFEPM4mLDSYmwLUC+RaTl5tJNOS72VEbS6eYaHFd
         LzkXGcX5RAJWPiOP3BT1r4Tv1HfyZp699JXkAhGlqKYvT+Qo/Dx9Q61GlQEP26z/TNht
         wVhbd6nmJgqgr1uM+IBIE54U0Tg15r00LNdv3dpi3YdR/5EOOwyq3rQrBiG/k9otJk/r
         t8Fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=e6E3PqxC31EHJ/IZiYk1zFYgiHOvhS8YHjjR1tecKCQ=;
        b=dfqkyn1bHqP1hE2VtjUlLQ1SHIJoD4D6D6Z3QOash51UF1Csq86UAKlsXs9BxnYAiv
         QFkQtLIKIHIrpF+SZ3VHUBaPRM1ycO6QC9caHyHZqOEDqf4sBSZcwA6qn4wcuV6d5OtQ
         xg0BmPH/ymNNgUgdTf6DQIWUf79cDD1nc3a4enDOSx+mkiAiK2iIB0OeU9Xn/EWL5GGD
         P9LCc0SfmVow63j6w+/Ejyy1H6LfSlSlbjKP1AruK5epwtN2FwP3aOyVnirVQxyc1dtR
         ZmSs0wx820qzKY8PUycNxBWYp5VSiYf962t+yvxosW5IOhDchk8Fv9F7FcS5B0cQzZW4
         Qa4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tyxd8mot;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e6E3PqxC31EHJ/IZiYk1zFYgiHOvhS8YHjjR1tecKCQ=;
        b=gVMWf8Hi/A/WHuK2RdEpKoL5RPyNwyH9lIHLZwQcWUERaLQJVhnNAZAKcFUr+GTbXm
         MffhiQCWntn9QlyL45sMWJtnJ7wVDZfeV8in3ZBO89Gai7N5Ux+SrQMkunS4A3+P53xL
         AVwiKDsq8o5U3tSUysV5gnjDOoGUooNTIAZVu7LyAT/UJV4gJh/s4UdR+9ftd0lVR3lR
         Ck1oGtBioywWfdd4og3wc2RBT3I0NsxhNKcgDCw4pWv5jW8XpkrDL5voBk4ExbazGtah
         MbIkyhncxpfI4dENp/Uwfn8dclCU5KVFLrwyUc6GNAs6dLCGC6XgPYPY4WTRwSnP9jJQ
         2M4A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e6E3PqxC31EHJ/IZiYk1zFYgiHOvhS8YHjjR1tecKCQ=;
        b=OjWi21VKuK6BdBHWqqv5rVKXw/afVi9PE4NITqqXTm3lwSts9qjnP5YudvR+nOChNJ
         cbYAg58qA01MhffzGl+INmDjVW9haPdmyj8WmbSV3r1ENljwj8kt0iTzHMYYLE07IrKC
         fLVcaGPz0kyZCcrH2z0fINlXpTMGBx7XbTXgwTi6hFdxr0nitZO5f5O1UFjZBJ+8YUa3
         Q4iX2SZPa5ZjGjcT0CJLHqjPDoQDkbG72GVUOWMq3zAuoh59gLmQrWPnzORaIkUOixbT
         PF2NxZMH1gOvEsIQwuXZBIOkw1uIkhnHTAYgFr0m8FIUjW4FSMMDqgoxi9EyVZL8md5C
         oqaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e6E3PqxC31EHJ/IZiYk1zFYgiHOvhS8YHjjR1tecKCQ=;
        b=cJJwyNizqB4We5T2w/lrCCr2QY5E3YsEu8FCGRrHeIedIsCSTNgrgAd6wMcVg3QK+z
         TGvmAK12RLzippSI6GmzQQE3EEu61O8bGciJrCra9SyhedKaFO/isguOCx5Jbd1Bx++T
         9HiyafpSEX+ZDuID53yHPLmCk69qXhpWtdvi3w+h2BNzPhf+tZtTko7/gXXSJ+hSh8En
         AkOV0YyBY3xwdzgpt/EiNArbc89NGFIG6KTiKkViHqyrxhwXibhXu94Iare2L4dMevMS
         iK69plXEtC9NXofZT42KKFTDe536WbLFjDFvjISwkU30boDCuH4Kmzpq9gjHVs4vKZkb
         IpwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531we76ygTzvKVaT5lMKUC9lu9A6HSMQ99Jku9drfWxdeGIim0ky
	OAcu8E7+dHKMorDw6mJ92OU=
X-Google-Smtp-Source: ABdhPJwHl0ZAM4d2ioX1xKSW3wC471EuHdyrM89mM4VHDHyUhxtPuwhVtlVPAI6J3b7Dq6Bn3PtcvA==
X-Received: by 2002:a63:5003:: with SMTP id e3mr2392793pgb.274.1600753703466;
        Mon, 21 Sep 2020 22:48:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96cd:: with SMTP id h13ls5389700pfq.0.gmail; Mon, 21 Sep
 2020 22:48:22 -0700 (PDT)
X-Received: by 2002:a62:1410:0:b029:13e:d13d:a129 with SMTP id 16-20020a6214100000b029013ed13da129mr2830570pfu.17.1600753702550;
        Mon, 21 Sep 2020 22:48:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600753702; cv=none;
        d=google.com; s=arc-20160816;
        b=iPH2KLAPBPxx6hfQO/49DLKEIOl6VcRAGfk0IJL4I2lTdTtDT5E1qKnVLxxhBDiBun
         Xp+yQtgH/7gZV9D8I+oTK88yZdaW6NuAZ48ZnJn7jNLTC5STG5+PQeLBWt2/J6ZNgEwH
         B0lNZ4pivzEU+cP4d4qR6OiulQUV0Im5HP67fB3fr37+8glB/aarn/wZO22SsrKFJ2WW
         uQVC3Lali1Wl3kGTQGszeBxQzvl2lBhjMW282ZZYepUtPbJW+2tAX40hYbNEfZ6mktGg
         /C7CZFocYY+pZdJDPU70Hr8rPETqVLqDE5dNsABaWQsetdkGOChAeIhtNzuE1vi5JtpF
         PvJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=a6SQCCgOvcVnYbZwR03FGL/qrYw5HjNsY2fRdLjl82U=;
        b=xzzHE1HjpgY6+aQ6kai6IVwjMenTg3OmhS/irb/5jBJyevSu8kSLm4AewEKYzg8Bf5
         OOk6CZ+w5NVccatM11UehKZLLiIsuG+Kv2YJWy0mYY+cGgkI9adXbk4fsNz21lWY3GDa
         F107oMXUM0SfLAi/vn7c2UJE5EMfuFKsG8qb4+bfGQJC4B6m3rQebhSv6pA6vqHofFou
         sZwxPflLE3MUnuPhMDWGWxAUEiKDYDTcrgwButRbGIuBGm/9gtQvpSMiZ74QL3dskoLi
         JbZBWClSA6Cy2BjEWGl9s3hBHKsvmZgldUVwYd3qY7ZMv1vB5DzHSEC1Narvs8P5dBlK
         xPwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tyxd8mot;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id y1si96835pjv.0.2020.09.21.22.48.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 22:48:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id b13so8893045qvl.2
        for <clang-built-linux@googlegroups.com>; Mon, 21 Sep 2020 22:48:22 -0700 (PDT)
X-Received: by 2002:a0c:a4c5:: with SMTP id x63mr4315522qvx.58.1600753701601;
        Mon, 21 Sep 2020 22:48:21 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id i187sm10961909qke.43.2020.09.21.22.48.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2020 22:48:19 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Harry Wentland <harry.wentland@amd.com>,
	Leo Li <sunpeng.li@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Cc: amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] drm/amd/display: Simplify condition in try_disable_dsc
Date: Mon, 21 Sep 2020 22:47:43 -0700
Message-Id: <20200922054743.2422929-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tyxd8mot;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_mst_types.c:637:8:
warning: logical not is only applied to the left hand side of this
comparison [-Wlogical-not-parentheses]
                                && !params[i].clock_force_enable == DSC_CLK_FORCE_DEFAULT) {
                                   ^                             ~~
drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_mst_types.c:637:8:
note: add parentheses after the '!' to evaluate the comparison first
                                && !params[i].clock_force_enable == DSC_CLK_FORCE_DEFAULT) {
                                   ^
                                    (
)
drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_mst_types.c:637:8:
note: add parentheses around left hand side expression to silence this
warning
                                && !params[i].clock_force_enable == DSC_CLK_FORCE_DEFAULT) {
                                   ^
                                   (                            )
1 warning generated.

The expression "!a == 0" can be more simply written as "a", which makes
it easier to reason about the logic and prevents the warning.

Fixes: 0749ddeb7d6c ("drm/amd/display: Add DSC force disable to dsc_clock_en debugfs entry")
Link: https://github.com/ClangBuiltLinux/linux/issues/1158
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
index 9d7333a36fac..0852a24ee392 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
@@ -634,7 +634,7 @@ static void try_disable_dsc(struct drm_atomic_state *state,
 	for (i = 0; i < count; i++) {
 		if (vars[i].dsc_enabled
 				&& vars[i].bpp_x16 == params[i].bw_range.max_target_bpp_x16
-				&& !params[i].clock_force_enable == DSC_CLK_FORCE_DEFAULT) {
+				&& params[i].clock_force_enable) {
 			kbps_increase[i] = params[i].bw_range.stream_kbps - params[i].bw_range.max_kbps;
 			tried[i] = false;
 			remaining_to_try += 1;

base-commit: 6651cdf3bfeeaeb499db11668313666bf756579a
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200922054743.2422929-1-natechancellor%40gmail.com.
