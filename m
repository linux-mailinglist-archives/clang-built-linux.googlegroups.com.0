Return-Path: <clang-built-linux+bncBAABBPPCYGEQMGQE25Q2OJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 299823FE959
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Sep 2021 08:37:51 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id t18-20020a05620a0b1200b003f8729fdd04sf903625qkg.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Sep 2021 23:37:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630564670; cv=pass;
        d=google.com; s=arc-20160816;
        b=jU1o1r273ML8wt6vQKdB6j1bb/V2PME+Kkhe2dS6tDiCwnbjchDPS9hmCcEtOlzv6E
         2h8zysiWTjMWRwPJaGoYphbh/rjX2q9LVygerZ58vLj0wrwik4/Nkshh7qHN3clfDXWj
         md7XooSe2F2zbd46PfUJ3CeCgyJpD4RqcN+tZJd2egTHZTW/+ylbQcklvC34gEefZqHE
         T8rluKYcOkLw2zD4dSLSoiSs4TFypSTYavjkYFj4WrVpgnsx0HV/S2sApwN+LLz2kd8b
         LU6SiIEEo+K3njjoscRiidwWgZdnIQj90iib7wVk3ReIyya4tOtG4TXWAKxXPdE51uQy
         oxOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=J6X+iGfbNgOTm9SZW00B/dEb38Qlq/Znk+elYKoJe0k=;
        b=pv/mP7UcrQaMrChC74ZlPuqTm5A2hun/2QvM2xu4Avlxe5InpB0pJFkm1ThOXpFrbx
         TymDptCigcEJ9OR2+7r7PZjQDE2bAB74jGXA/tlleo5ENs9cEuLTbZYRTJ1tOvi86QR0
         fec79NWHZEynx7W5sVrIXXsIQrseUrQkOVXp9zAo2+cw58H9CvR8PolyWyisksF4ED44
         06pqXglJM5EsJpGYB34z0vYSKgmDIdcXDKaqkw6gmjxQv+WFrn0dpkOgRgDbuK62yPzD
         4fJDlNPgpyhS1L5XeyIvi0JNkiKH1q0WT5m87W3cSoac8e6SbBfGwCYFbOr9LfRYQDxW
         nnnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jiasheng@iscas.ac.cn designates 159.226.251.23 as permitted sender) smtp.mailfrom=jiasheng@iscas.ac.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J6X+iGfbNgOTm9SZW00B/dEb38Qlq/Znk+elYKoJe0k=;
        b=ikNxeEMheBAJ2dtrlvHEitkRDc6hcFYwl/a1iMaN9vKn43WRFzjuXPTsApyvxUfLSq
         ODegmq/ggjp+I9HqUtmXYK85VbxCJ1YIUpbcfG0NeFTOxn4K13Kid8/ZGfmXr106hxHO
         WdgxhWXU6n0rgzvQoQfkbVfBcGeHnPGuJwgbS9XIqQBXiOvVUrgVqDOTyHWb6L05ov5D
         YeoNbDavvHSLH6W4TljYZEb0uczuwaA8wy2o1Bu9Yd0JQN1oFQGJerBzQf+iHBetIujS
         xFM0dc+tmxeyWjZ/p6UPCW0SgQf/XM9mQvttvQMQ5l60vAHQrgdr9klkmzGbbUEj0CrX
         euUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J6X+iGfbNgOTm9SZW00B/dEb38Qlq/Znk+elYKoJe0k=;
        b=k0dpBrvhNXWdR9Cb8XqxlM6ReaSuTTLWwHtzps1yiAFanrb3tW3z6g4OCgy2HMNtV3
         U/cxRgLMlaNOK9lbYBuLnrprnw0vB6nOEJooHSB8AArn45y67zdXXn/qhJi66sPDWnnm
         mTDMezL6kGQqiAIOO1tbQ4SSz6a4uWnpSfSyBMtGE+dEBm/G1KAHaPnupQE2EKLnWihl
         Qq13nGC1qbK4/Z8lAEBKZHxvNanYtBoSxJLh+fsc3wokeLQYRw627r76Zp3B2744O4ID
         9T9iqZRdWLogjOkh3ue2pVTiEflyoi6YfQSnIjHAZDKRZTP2yVqwcW4EDVi4vCa14CWN
         +5FA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530lW6DQ+OqFTAipCRRk89DFc0tKKZwL27jkjm2T3YyRlMi7HLwJ
	CZDhWcu8lRNnWR08oRtFIdU=
X-Google-Smtp-Source: ABdhPJwPqOi+quPP40LTM0xoXdhZeaImMiOrmoS9bi2DuFo1n7GxUFNldGMthGAkgnvABXdWvbZICg==
X-Received: by 2002:ac8:dc9:: with SMTP id t9mr1510345qti.293.1630564669976;
        Wed, 01 Sep 2021 23:37:49 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:710:: with SMTP id 16ls693788qkc.1.gmail; Wed, 01
 Sep 2021 23:37:49 -0700 (PDT)
X-Received: by 2002:ae9:ef0d:: with SMTP id d13mr1650618qkg.358.1630564669142;
        Wed, 01 Sep 2021 23:37:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630564669; cv=none;
        d=google.com; s=arc-20160816;
        b=TikNDNT3tnbPL02vn85utsWKt6j7RwgdKbyBPpdr/0GEHWn05WQ4xduzfKQ+sf3Wl1
         8InLofNLZdP40q+Q7dGjNRcAPApCGX2WxdEdBfYJnOshHfFT9A4zFvNOzIlsfjmt1jLS
         HrTbDw/Opw9Ouuhbnjx4yE8i+iGKajDYYrsEZ8HzFc/Elye82xp3k11xmwxxnfh8zWU2
         doHFwEHE/kuTRtKlEQeu4Y59Ld8nG6p/KdZOLpfUe9/XUKDUWr8v6yY6iVRtpA3kcJ0w
         +L45lbAyourzdI2W8JtzDDG6nzXdu/i4qpK1Mx40Jhd7TfzuD3yumXekmidUTeYCP3rA
         hLbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=OKx+4zujPGdQsFHolH2LtAgY6xTIoecXoU+5vZFWyCE=;
        b=RlvDkd3Cr+Th8NpLUEN8GQB1ywN6g/nvYZs+I8q15nSGQp6mY7bhs6+/dMUZskZM3i
         RSHuPYjEx6Q+rEwoXndjm0N6R7/SZVhFty6qHKuURTCgk8JiaXC18dYi0J5S5qE+KDkj
         gYwK7j5AwnVENOjW/O4+76/fLiLDH/YocTaiBSVRKUmGJWxAOiQonGToEExhU16oHmII
         kCjF3gXWRMMI5oGMkUUwOCbFS2RVtWLTngUG3W0cjA2GI6DFTUlF00A/4jks/XGE3mZg
         hTXtlS4dzZkIRQkDrh5aN4XDZ2jiSKZZ/vYbbI7++UdBmz+TUIw5LG58GquuxZYS+tQD
         Am3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jiasheng@iscas.ac.cn designates 159.226.251.23 as permitted sender) smtp.mailfrom=jiasheng@iscas.ac.cn
Received: from cstnet.cn (smtp23.cstnet.cn. [159.226.251.23])
        by gmr-mx.google.com with ESMTP id n78si99714qkn.1.2021.09.01.23.37.47
        for <clang-built-linux@googlegroups.com>;
        Wed, 01 Sep 2021 23:37:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiasheng@iscas.ac.cn designates 159.226.251.23 as permitted sender) client-ip=159.226.251.23;
Received: from localhost.localdomain (unknown [124.16.138.128])
	by APP-03 (Coremail) with SMTP id rQCowABn6o02cTBhG3TEAA--.64462S2;
	Thu, 02 Sep 2021 14:37:42 +0800 (CST)
From: jiasheng <jiasheng@iscas.ac.cn>
To: clang-built-linux@googlegroups.com
Cc: jiasheng <jiasheng@iscas.ac.cn>
Subject: [PATCH] bpf: Add env_type_is_resolved() in front of env_stack_push() in btf_resolve()
Date: Thu,  2 Sep 2021 06:37:41 +0000
Message-Id: <1630564661-552471-1-git-send-email-jiasheng@iscas.ac.cn>
X-Mailer: git-send-email 2.7.4
X-CM-TRANSID: rQCowABn6o02cTBhG3TEAA--.64462S2
X-Coremail-Antispam: 1UD129KBjvdXoWruw4UKr4fArWUKw48uw4fuFg_yoWkArg_K3
	W8uF1rGwsxKFsaya1jvw4furW2k3yYqFn7Za1aqFs8G3s8WF15Jrn8Xas3JrsrGrWkKrZF
	vFZ8G3sIgF1avjkaLaAFLSUrUUUUFb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUbgkYjsxI4VW3JwAYFVCjjxCrM7AC8VAFwI0_Jr0_Gr1l1xkIjI8I
	6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AEw4v_Jr0_Jr4l8cAvFVAK0II2c7xJM2
	8CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2IY67AKxVW5JVW7JwA2z4x0Y4vE2Ix0
	cI8IcVCY1x0267AKxVWxJVW8Jr1l84ACjcxK6I8E87Iv67AKxVWxJr0_GcWl84ACjcxK6I
	8E87Iv6xkF7I0E14v26rxl6s0DM2kKe7AKxVWUtVW8ZwAS0I0E0xvYzxvE52x082IY62kv
	0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUtVWrXwAv7VC2z2
	80aVAFwI0_Gr0_Cr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq
	67IIx4CEVc8vx2IErcIFxwCY1x0262kKe7AKxVW8ZVWrXwCY02Avz4vE14v_GF1l42xK82
	IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1l4IxYO2xFxVAFwI0_Jw0_GFylx2Iq
	xVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r
	1Y6r17MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Gr0_Xr1lIxAIcVC0I7IYx2IY
	6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI8IcIk0rVW8JVW3JwCI42IY6I8E87Iv67
	AKxVW8JVWxJwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa73UjIFyTuY
	vj4RC5l1UUUUU
X-Originating-IP: [124.16.138.128]
X-CM-SenderInfo: pmld2xxhqjqxpvfd2hldfou0/
X-Original-Sender: jiasheng@iscas.ac.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jiasheng@iscas.ac.cn designates 159.226.251.23 as
 permitted sender) smtp.mailfrom=jiasheng@iscas.ac.cn
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

We have found that in the complied files env_stack_push()
appear more than 10 times, and under at least 90% circumstances
that env_type_is_resolved() and env_stack_push() appear in pairs.
For example, they appear together in the btf_modifier_resolve()
of the file complie from 'kernel/bpf/btf.c'.
But we have found that in the btf_resolve(), there is only
env_stack_push() instead of the pair.
Therefore, we consider that the env_type_is_resolved()
might be forgotten.

Signed-off-by: jiasheng <jiasheng@iscas.ac.cn>
---
 kernel/bpf/btf.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/kernel/bpf/btf.c b/kernel/bpf/btf.c
index f982a9f0..454c249 100644
--- a/kernel/bpf/btf.c
+++ b/kernel/bpf/btf.c
@@ -4002,7 +4002,8 @@ static int btf_resolve(struct btf_verifier_env *env,
 	int err = 0;
 
 	env->resolve_mode = RESOLVE_TBD;
-	env_stack_push(env, t, type_id);
+	if (env_type_is_resolved(env, type_id))
+		env_stack_push(env, t, type_id);
 	while (!err && (v = env_stack_peak(env))) {
 		env->log_type_id = v->type_id;
 		err = btf_type_ops(v->t)->resolve(env, v);
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1630564661-552471-1-git-send-email-jiasheng%40iscas.ac.cn.
