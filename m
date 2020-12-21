Return-Path: <clang-built-linux+bncBDS5JPEL3IIRB6O5QD7QKGQESBUVWSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA612DF889
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 06:13:30 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id w11sf8330293lff.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 20 Dec 2020 21:13:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608527609; cv=pass;
        d=google.com; s=arc-20160816;
        b=NOD4yXy8O/O8wH2/aC/ObaSUt8xrHhBSRxLqAgM4+gULF31APQ+WSbTRB9/aAFUGw/
         1fcdWhFV2kSff+fAYw060SblXR69KNeoDVKe5FyoQymv3qNZrvyShm0YyWKMmfn0H3ZK
         6RqjF6rXApmTVeKrdVRx2hUDH8QpB3EcsBbnFVFz+1Zrd4W0Lp74xuOwqBxwS07HbkPN
         SUU2nO2hNKANP9gYo1g4k7BIuwqOBYtuLS8lMxy0mqrsEUPttyo7Awiui4ehPAgR+Pyd
         sHZ3DZuEACirX5CPMflRN3Sae5Tenpb89t976dn9opYQXg4ks/TieTBVrIXJOEAUydFJ
         kkRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=6jEpmQqlIKxECwR2fCdVTidrhRd9L7fEw0MgMU46jJE=;
        b=HMGLDaZHoxU9TeOs3Vm98iNyjEZPiOMMuHe1oWT+uKwcKFY3sjeP8KfmEHBWykxVYJ
         GEM1qdgsvgCizIaoZPHMfMUoj/5Cp2KPsKePdt5qfIOF4iLYNdaYoPa0S1hunfbyBhLe
         V5ussIH0lA5cM76cKbfVEsewD7sMk0z0IjSZPhLTzGgdo18pzrSAE6byilxVCjXSBWmv
         5pjYSlCy7H0nOD8Zmc3b3ivovDXAXguLlC2RhYqRqHDjnM5IuwMsGmdXR5N5WCqmaZPV
         0jgWAZWmdtzx7H+dEHC4/0qDkJqC+jOQ/D4f60poMtmbd9iemriohze6pViV0wrI4RCw
         ysGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kPNDbFnp;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6jEpmQqlIKxECwR2fCdVTidrhRd9L7fEw0MgMU46jJE=;
        b=JWz+/WGR+vWYBsX/B4sbYhpVipa5oPWwG7ap68q2QC4jOToj9ff2Q/9/qCUAdOWKds
         Op8XKNSTiZ/ReqOLBbvQzDw6JouTScfP30HnIepWIrvSaL9PPY3f5xxjYaBHHO84+BYK
         JBMYkVN0dSHKEF0qkirB93BCK7vZ4HIQbgvb1WjO+4pSjRunNZlD2ygJkVx1jz2fZKx9
         ULi+1ulJjqJya6R87ISzJs+cItB8LS+yKD3d7u7bLlvVilJ/z5FYgsXPEzVM8ulm9VFx
         wxNtwTPyg1ceFnB92L8k2bavMTC8q4hSONa2p46Bw2nWyNaH72J9snLRhPYpmi0Cj7QH
         Z95w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6jEpmQqlIKxECwR2fCdVTidrhRd9L7fEw0MgMU46jJE=;
        b=hY6mi0qJiWwF7FNmqnXI3qtECEUpNNlHjZvCkQ0Dbhj1DtmqQJNe3+aa5AQPkP7JE4
         9v+srzvIRktoyrOlO5jl6EpNn468p9sFhFVoqCMYTTrATG31EHLJJihxmbpHXjx7O5ip
         sLFH1lyEewLSITg9dmDRn82sB3zz7TG39jz0loSgKoQIzImFodxz9W6BxfamONwgvyii
         wkJEZjRrbcoQc82eUH50GmfX5hlhhren5gYH3jyL3GEfL18q65BTGHX/ewv2wtM30sBW
         hMg0P9DlMMYxflCXwGrqWmKBD9oGB/u/NtaRKk1dPt3xDW5rgvoa2fNUoSL0V5uyWyjm
         j94A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6jEpmQqlIKxECwR2fCdVTidrhRd9L7fEw0MgMU46jJE=;
        b=nbDXM6uizv7p3nNvlgYBIPD5h4WoUns8IlV6btuMQXjKcC+j7mUGH7WFygcwTBUk6U
         H3gGFfi5ChDUOpeDRENqC/lVynFoQnQEg/EZQL+pTsLTxPRIRiIu8IZuTkjzpyKYlCrF
         Db7DjB1aGlN0GxGjeJJJsnjsYhIxVCYIzu+7rOvM4XbfA8mXvtXV/+jpbJvBxyLq0Ip/
         qdKQGpdUXHDpEEjb+cBdHGTHZYBKgg6b3y6r9BKXno66mwu47SIqlsehU3VPXs59bpvv
         Keta29aXjLTBfXfeopJJTZCyA3mwhDvXTAmJqQbzxt0yu8/W4hB8IWa1VH2VhRreJVxL
         1k8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xtjMNMBgcUJWDLVfVQjm2TuiKq3PB/rp+CouJlZ03tXvRXrRD
	q8jmjrj5m/LSQTHfn/EsR8Q=
X-Google-Smtp-Source: ABdhPJx3IX+ZTRWzPtYzO/xVfjlpcxTG3dN6LxGCz870EN9vxqXGdyLbiR2SJAZK7iL2RcDLIDwyqQ==
X-Received: by 2002:ac2:561b:: with SMTP id v27mr5858373lfd.425.1608527609781;
        Sun, 20 Dec 2020 21:13:29 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:6145:: with SMTP id m5ls3913486lfk.2.gmail; Sun, 20 Dec
 2020 21:13:28 -0800 (PST)
X-Received: by 2002:a19:86c5:: with SMTP id i188mr5497038lfd.578.1608527608642;
        Sun, 20 Dec 2020 21:13:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608527608; cv=none;
        d=google.com; s=arc-20160816;
        b=bFbdH8rXLkN0KFd9oY1B+eob5U9KFEYJzyPawGzHvmuMgaxmTqp2i9nkDel9lh1Tfj
         lzdMSwLthVQvUmhQHXFPeAYVgfaTGFVLQF5Zocqk5xbaMkbl+Yt7Czwon/qFjBwZvKD2
         80qmnOxINQDSkG+khG4Bzh2bsrTbJ9kU+z3cgHaUtEa5m9Uu7uNVhfsBELXWhccZFyA5
         qgl3NVrPE+SO1zGGD9mGikaNe2Qp6qH5zZKM3V0b9VOjaqpmQ9Mroc2dBZSMgdW41eQk
         MR7XGaFZupiha2GU59tvbRqcfT5ip0ryK01mM0WRUGcN/7SZRZjQZfemA4eGWbNjfuXc
         FBUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=lLDJBIJ2YYNuh2CnTnkqFja+9uBc8NH5OZ465zjG1e0=;
        b=vFbxHLa1AxBkQ5FNdedcjXlxdPbszeGpHdTjW9ab1ZTdnZyG4hzFn0ro2mZrVkSZeh
         zM5SCI1uOXfJKbzUfc7gXzWLt9TFqem9PrJsBzsCh6VsH3WcH0XHVdK86svKgx7vqCIe
         SB1BbtYclp6SECw2VruXkLrScDavYgEhI2SrsN/Ek+CKCHkjTzmd7DDf7N2z6lrTkuMH
         KvL3Z/V55U1FKS7t3jmA8bmX7ylvrJ9X8tYXiHjZGFEljt/dQDNHvYqpLlELjtsI3XU8
         f7UX9wvG+B5LV7KnN5S342uUDp1FTTvLC3P6uSBgr30BnbpdgwECAJIc4nwuiUEMZp8j
         y7fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kPNDbFnp;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com. [2a00:1450:4864:20::330])
        by gmr-mx.google.com with ESMTPS id 207si579882lfm.0.2020.12.20.21.13.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Dec 2020 21:13:28 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) client-ip=2a00:1450:4864:20::330;
Received: by mail-wm1-x330.google.com with SMTP id c133so8730145wme.4
        for <clang-built-linux@googlegroups.com>; Sun, 20 Dec 2020 21:13:28 -0800 (PST)
X-Received: by 2002:a7b:cb54:: with SMTP id v20mr8483618wmj.148.1608527608118;
        Sun, 20 Dec 2020 21:13:28 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2dcc:3600:8456:e09e:aa48:2c57])
        by smtp.gmail.com with ESMTPSA id p8sm21341535wru.50.2020.12.20.21.13.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Dec 2020 21:13:27 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
	Len Brown <lenb@kernel.org>,
	"Rafael J . Wysocki" <rjw@rjwysocki.net>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	linux-pm@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] cpufreq: intel_pstate: remove obsolete functions
Date: Mon, 21 Dec 2020 06:13:20 +0100
Message-Id: <20201221051320.18391-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kPNDbFnp;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::330
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
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

percent_fp() was used in intel_pstate_pid_reset(), which was removed in
commit 9d0ef7af1f2d ("cpufreq: intel_pstate: Do not use PID-based P-state
selection") and hence, percent_fp() is unused since then.

percent_ext_fp() was last used in intel_pstate_update_perf_limits(), which
was refactored in commit 1a4fe38add8b ("cpufreq: intel_pstate: Remove
max/min fractions to limit performance"), and hence, percent_ext_fp() is
unused since then.

make CC=clang W=1 points us those unused functions:

drivers/cpufreq/intel_pstate.c:79:23: warning: unused function 'percent_fp' [-Wunused-function]
static inline int32_t percent_fp(int percent)
                      ^

drivers/cpufreq/intel_pstate.c:94:23: warning: unused function 'percent_ext_fp' [-Wunused-function]
static inline int32_t percent_ext_fp(int percent)
                      ^

Remove those obsolete functions.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on current master and next-20201221

Srinivas, Len, Rafael, Viresh, please pick this minor non-urgent cleanup patch.

 drivers/cpufreq/intel_pstate.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/cpufreq/intel_pstate.c b/drivers/cpufreq/intel_pstate.c
index 2a4db856222f..0e35dd247986 100644
--- a/drivers/cpufreq/intel_pstate.c
+++ b/drivers/cpufreq/intel_pstate.c
@@ -76,11 +76,6 @@ static inline int ceiling_fp(int32_t x)
 	return ret;
 }
 
-static inline int32_t percent_fp(int percent)
-{
-	return div_fp(percent, 100);
-}
-
 static inline u64 mul_ext_fp(u64 x, u64 y)
 {
 	return (x * y) >> EXT_FRAC_BITS;
@@ -91,11 +86,6 @@ static inline u64 div_ext_fp(u64 x, u64 y)
 	return div64_u64(x << EXT_FRAC_BITS, y);
 }
 
-static inline int32_t percent_ext_fp(int percent)
-{
-	return div_ext_fp(percent, 100);
-}
-
 /**
  * struct sample -	Store performance sample
  * @core_avg_perf:	Ratio of APERF/MPERF which is the actual average
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201221051320.18391-1-lukas.bulwahn%40gmail.com.
