Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMXRSWEQMGQEZXWY7LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1FE3F6BEE
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 00:54:43 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id v126-20020a254884000000b005991fd2f912sf8922951yba.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 15:54:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629845682; cv=pass;
        d=google.com; s=arc-20160816;
        b=obHd1MlW0OG6grc2M6yR+Edq2k+0tffpdAKZ3eFonhW0p2D64uSfLgkgXBvpqUczDu
         Vc72wdQ77LZCggSy/Qm83tO8Zl9CYv9ZyNXKb/XvAEAbf1v+PZ3yBrkE6EKo5GMLo+5q
         MntY27KvpZkQoba2TcWk1//Uce0xCfCV7QO2PQOje1AE+HHG5lOSdBGVb8T+4wW56Lci
         yM70UBUxPRpgZ6hFxZmo1l6EaCnijBwIXT0XdvfuO7I0AzKfjDwEVI3yYKSIXV5htEno
         ki08UoyHdjNaQ3LO2hoRVkqvR9QD7A/oq9bMQdfV6uMpIcXRXy0/uYrZRRuYEngZ0Lkk
         BJUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Pxl+886ymMX4yLUkJHmwD8ZjJUtRdFEjdYCcFIttJoM=;
        b=yieCSTJxgM6p0z0ZBGbft47gV2izpepp66UZ9z0AcduOhhfB0dzaFAqqFTzem/iapC
         a4bbgBU0+STSKBMA4yrcxP0RerAblYnWnWZQ7z3AipuO0JpTuTPOZEEZJI/oc8cs4fht
         fewOMQdMSP+jCrw1YRBa2zUSU8raYQxwxBduEseyGARLbAY1u3vn70kY5DCdvy3pa7Me
         XjqCjAMEaBDJa7seyNk2F50c24npXRC+OqX3ewgCwVCq3B+A2A1Hv4R9HKx3yXrAmPMJ
         yF7NT5DII0eec1rLzXsgIfgE4hevBg5kiT0P4bVFgtI03+cA/DC+Nlfy/7hUVpGBWR31
         FVVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=flB5TcWM;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Pxl+886ymMX4yLUkJHmwD8ZjJUtRdFEjdYCcFIttJoM=;
        b=iqRon2LD+prbHS3Y3il5iMP9AP0BtZ/x+gdUtkb5u2f+Lx4+vVEKSdgyx+/S0j3RjQ
         y5xZs8+HMvmNWnQhSKV3joteyXD7aHMNj5GYQKEMQIxszfDP9qk6auMHj9ZekZaINeew
         913WkJA5uKl7L0xis7oOMhgDlzefQmXUBhWlwYMhZWODVQabD3WL/eyum064ucisf/Zq
         N56t2vWfPxbX9vA6lKweG72uAJnWc/icAFPAIzu04o1JMnqoMoGxddJ+zTiHAOHWHodY
         qzpD1lR+gNCoKa2jfNYqZ0BIXhIEFpdxb0B/SjPwE1NEleZalCPub9FaIKU65cnoaA4S
         TNWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Pxl+886ymMX4yLUkJHmwD8ZjJUtRdFEjdYCcFIttJoM=;
        b=EV6XqzdzdVpSjbqAAArJM3mMtDt017c6oDOD75exExfuX1Sxqw8ImW/QQOHbfOi1bd
         a5pkdZ5xuDP756rRTbPt+rL+ug5NzLxFMg2JLrrRUG6Ddc0gB4z8k8Tt2W3deY21+vbZ
         cMqwbiEIyrtGdktpFtuJQvmfjvwXaEl2l5NdfA4jnGlGoznNOU84Ww+DCTt/E7xCn9io
         W+0gltwYXyuc40m+f5cKMez3tvnqc2Lmj0bBWbWvitvitDzyYL/Xd8lic7QB8tTfSyt0
         l0FuuRG8PCLsHDZn8VyM/wDJb8BDaPUwk5VAoRrv8Bb3qCppIhTsGS6mEJdJRpO4Ai76
         0lXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+GBu10b8OS08ZnXZfec8aQK6gMCtjN06BjI5yr/aoPt2UQFOI
	RNzuYnTPQ2cpBs33T5FFbKU=
X-Google-Smtp-Source: ABdhPJw/2MEtX/9fFgVdklpqCwYu4oVo2rBlg0ms2qA5SHdM5AOnX4IWbdluvpw5Juo6QlsJD0FCVw==
X-Received: by 2002:a25:ac87:: with SMTP id x7mr13668234ybi.332.1629845682703;
        Tue, 24 Aug 2021 15:54:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ac0b:: with SMTP id w11ls265317ybi.4.gmail; Tue, 24 Aug
 2021 15:54:42 -0700 (PDT)
X-Received: by 2002:a25:e0d4:: with SMTP id x203mr20981625ybg.391.1629845682282;
        Tue, 24 Aug 2021 15:54:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629845682; cv=none;
        d=google.com; s=arc-20160816;
        b=ikRuXFrcto1SdKWLlh8XMl787iXwD3ckeLrdV8P9C+uZLSLqoMKkH9M3YYaetNYGj4
         sjFximdf+lZ0SbgGDzbP1ScHcHbxldbzg4o5jYSBpRC6zkQgOmaA0cAgwBC9uh0z3Uru
         UfJ3LzeTiSzEByOKlVMVIJtNksQoh/HmhoxZWahfmDwR2G5miZoa0sXBKvfrk8QVUsRJ
         6/iPk7z/hBU5u94r1nxlMhCk7KRKp6+t2MiXmvojm/iW4aWkmh0sop40C3AuMC4ggrvO
         eD0dMTlM2Xoay29ViH1jyzYGfAdD/brgNrJgXmQeP1JYxwk28wjfzJVxegTu2zRsUDys
         wQsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=fjsFrH1ToTP3PJ6sz0mhtzRo9Zt9/V/qXs/mg0tq9oI=;
        b=GSZyvWOH6YnY1/0it/nu/TSSNorbNw9ZStfzPsor4HALlLNTcv2BfIdfKQeTHPkh7y
         oAc9D8menXg1468RE1mUu6ESCFCEy9+CfcDSNWTgSdVqvQugkv4MKPm5eyoQtMTo5V0e
         N1FuVX+JKdImVCwWk/s0KjjkskQ9WcY5EWPK/mRlkWNS8zNiEEzbKR+qwz260fczpGCV
         B0AyRRcio21A8SKAZI6TMdW0VGwapuVFAPi/pktaruhfNRhYd+qtsOPdFSYVq1MygyvY
         rqY46Fcie7dLqVucVg9z0ETbAYNbeaD9P+Xxc0sOg1gOoKkJBkqpj0ycwQLh+bUwBZQU
         LuLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=flB5TcWM;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x7si784138ybf.3.2021.08.24.15.54.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 15:54:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C2BF861139;
	Tue, 24 Aug 2021 22:54:38 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>,
	=?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
	Matthew Auld <matthew.auld@intel.com>,
	"Michael J. Ruhl" <michael.j.ruhl@intel.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	llvm@lists.linux.dev,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 0/3] drm/i915: Enable -Wsometimes-uninitialized
Date: Tue, 24 Aug 2021 15:54:24 -0700
Message-Id: <20210824225427.2065517-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=flB5TcWM;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Commit 46e2068081e9 ("drm/i915: Disable some extra clang warnings")
disabled -Wsometimes-uninitialized as noisy but there have been a few
fixes to clang that make the false positive rate fairly low so it should
be enabled to help catch obvious mistakes. The first two patches fix
revent instances of this warning then enables it for i915 like the rest
of the tree.

Cheers,
Nathan

Nathan Chancellor (3):
  drm/i915/selftests: Do not use import_obj uninitialized
  drm/i915/selftests: Always initialize err in
    igt_dmabuf_import_same_driver_lmem()
  drm/i915: Enable -Wsometimes-uninitialized

 drivers/gpu/drm/i915/Makefile                        | 1 -
 drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c | 7 ++++---
 2 files changed, 4 insertions(+), 4 deletions(-)


base-commit: fb43ebc83e069625cfeeb2490efc3ffa0013bfa4
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210824225427.2065517-1-nathan%40kernel.org.
