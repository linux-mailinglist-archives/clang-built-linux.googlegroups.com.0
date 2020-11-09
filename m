Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBGOXUP6QKGQEM7IMOOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3EE2AB1A5
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Nov 2020 08:11:23 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id b185sf1354686lfg.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 Nov 2020 23:11:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604905881; cv=pass;
        d=google.com; s=arc-20160816;
        b=sHKDlGZ01+vS9BWMDguTsCKFOgWUKpcUc/fEGKQyuvqsG4kQBMsTDiMHI+OmLczlgx
         xugbutVal3OmumUHVxSM/tUsVS7ys63tvrANGH57zw5rKUKG+FLqFQiQlgnGSTHNVe6E
         ayfuDdy8uze1tknfVr3VKkhrompWkE+z6EmC7D7MvvJGSCnJ/ofPnXACULYIfKeZfMrs
         /y/jIDbXe01Y2KSB6rwW7/sB8Yzq+0jQmwhCvRzxOebx8/qbO7u4re4N7+5lmhdNUL1g
         Vp9u8Z1taS9T3+9upPoB3WI2bu1cQCd1lKmcMcZ4AnSjJaIZBbLqarAnaGU5ZlR+QYQu
         Wagg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=zEW/liWkUMYlHmow5Li1B7WFG5yjgJUDCCsmpSv7Jos=;
        b=zjQWPwaZ9wT+w4UXMRlKhDCO+TN7O5kGsPbHtScO33XRbPXVrmrA3cbjX7hVBEdA6e
         0QxClNqMkiiz5Dhx5Cg84kvWLmTbyC5KgHLxnww+Wyu5yLZ9vsDMw75mhrZAV9Zhyu0Y
         IHVbxyIPB6oG/IjyXrnV/1W7ALwST1+3bdFvxv7u0KlalyS63UMhvH6yI7KlbDZJh8fO
         EiQc1ndY7TJIS9AWYkM52ES4NB2K0KEyqCFg2UrjneBe6dT4kgnhq5aGBXTSkgzgHxNj
         FHLPPJjwKfnWi221F8BH+uJCJ4TWa74GXwQqwtFx2RUwwa/iBqfuFloGSG678zD+3mdu
         eo5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V8s9PjVu;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zEW/liWkUMYlHmow5Li1B7WFG5yjgJUDCCsmpSv7Jos=;
        b=Twsdm58tMxqAVQz8UlaT8sKu6D5YolcFrzf+cyOEF8wf7tWy3WM+fmKG+zjjY113gO
         gygIeNZds/FkRuT/MJscoZcyZojQV9qMHdQ5brdB7Bb9TTG1YWgoDuOvAzsOpFgsgfIg
         bcJuqShrBDfqBJ6Nap30Hw6XVdLWCDYvUOUQ6PwDTgJSUvufBT9EfaYQIFOy5mgUpknZ
         8I1BKDiE+EvWeTRu7UuF1OCQ478gxIWyapghAMQuOshXJX5c9Jpkr/z9QiB3PwZ0FeTq
         TOFke4OokTn5fxyse00mwrnJ9sLprIxGr6JtH1poVW06XmcbnUtrwAehLE3ZA+eSHaOy
         lreA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zEW/liWkUMYlHmow5Li1B7WFG5yjgJUDCCsmpSv7Jos=;
        b=iYj2K62KbfbRNj55rY0p2aAxeeNNl8s9DUFstMUejLL0HDaaQ+akqWgjK3A0udd8lD
         OzRPWXSyKRASsQftOG6FbcXsPOre1C59U67lQV12fIc7MM+55ub/mTRvEyNOxBLtpnbs
         WmJ/+91Mkfjc4vKd5vHHEe2rjLxbZQ1oGCGxrBGsePJd4w9dC74Aa86zTVqjVX4bpaTc
         d/WJtiEd7w720dqrcGospOMqApApU941PplSxwykAgZhzFwIIRHJozgD9ORI6wvqU10d
         Umz7m6z8olvK0CPGKBMZAwBbU1Uv7Cj+mvQX2WqDYAr5bH7jnM4iJUqx8ComQJ5RqoKX
         kziA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zEW/liWkUMYlHmow5Li1B7WFG5yjgJUDCCsmpSv7Jos=;
        b=BMDugZYxy3jHdN8SHgpK0mnrOFzEBN2bq6gKDCF3jxPXpc4dKmFOyvm4b98UFdOO8z
         X1IO+o3sQCWtbYfUP015/jlj3mDdiHPUDCKJRGkIs7FzSFRbOpO+lQviFynAM3Vtx1sp
         FYerV8lXLJ5labPYKAWPCHaznAVaO2fLKxV2uf729vhK8XZuuS2elQ0J4os4h3nJHOKP
         2HNSoh4YiS+7Pa3p2R7P87efIW1bpmwro9vzFlPX3sWYIQDc33iTQeuQBQlvUG4c1hK+
         CWeG8mAGqTTf2vL91wojt2paHBYgwei4pwo6koLf7el1z3HUsFrCLNjyt4yZhaYbBULn
         UraA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533dDrMtAMSC8XzLeOewwA2+GBZBarZZ/iAP1oqLHASR+T4pkDfB
	6HqtW6RasktzB8dnL2CW9h4=
X-Google-Smtp-Source: ABdhPJwn/8ZhF2FdCgTnDrFI+ut0xf+JRxZpYPkJe6uXiGAQCSyVUMAgoP1m4UJgXUOQ78NJTMQTZQ==
X-Received: by 2002:a05:651c:483:: with SMTP id s3mr5127109ljc.298.1604905881501;
        Sun, 08 Nov 2020 23:11:21 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:888a:: with SMTP id k10ls1184136lji.10.gmail; Sun, 08
 Nov 2020 23:11:20 -0800 (PST)
X-Received: by 2002:a2e:9250:: with SMTP id v16mr738595ljg.19.1604905880242;
        Sun, 08 Nov 2020 23:11:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604905880; cv=none;
        d=google.com; s=arc-20160816;
        b=xTHqCYQKy6qixgX4r7YCPx6NTiGqtODki4rj+aU1jlxUuIN1R9dN1a733FYxs61UtH
         JbpG5orncdufk3O4tVxa+96DHl7nNwQFg2+75k/HFNd0XugShymzUPS8f4eyOtNwUDXp
         6DeOeV8xGehG6O2WYh0Ora3NdkzxOiEihwfyARb52fZ+ubKmTAqjt6BHqBhXxksrEAt2
         h1dMJC+sLIs0/+Rpy9Iga8+E4xO5S+/sYDNf9DwLqtFDVZ98v1B19uGJ8PdYng0XKjBH
         uuiELYhBT0ZtbGYwoYM1cw3nFnbgxcWv+hzg0GEzKKI+3T+KyhtCZI40AUo+EJhOEGrB
         pCkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=UfP7NvLo6S+A1T4P52kCNANXDGDMhGjiqRkXf0+vq8s=;
        b=nLrvPuXNfhupBsGKcq9/ul1SqG9R7tPQAbGRd/bqHx5UuMe6fI4ldzWk4g8sIKpR0j
         PStiZkXpg7Ikz3GMsHmtQAJ1DwdWRddnq+yurl2qMamlmhWKfETjQoXS/cxT4LV5dubh
         oidHEDE3BsFWjlXpgMONgtygGXjHwo+v+zvvhmbTVTOizSoED7eVQQqM58TYFNILDmCo
         tyTLTF/8eGojlrp3otnMNFcEUFgcaYh4OunCpF9EMDkjhLn4lDYB31xH1A0xqbkmLuy9
         G2mVXwDTVbjgqln6ipcG6CwAArgWdTAOOx0rTxgUhwiVxrt9yQqQwmjNu/vMMjNqMJvY
         HQJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V8s9PjVu;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com. [2a00:1450:4864:20::542])
        by gmr-mx.google.com with ESMTPS id v24si295219lfo.5.2020.11.08.23.11.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Nov 2020 23:11:20 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) client-ip=2a00:1450:4864:20::542;
Received: by mail-ed1-x542.google.com with SMTP id p93so7556677edd.7
        for <clang-built-linux@googlegroups.com>; Sun, 08 Nov 2020 23:11:20 -0800 (PST)
X-Received: by 2002:a50:eb87:: with SMTP id y7mr14459918edr.187.1604905879680;
        Sun, 08 Nov 2020 23:11:19 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2dd6:1d00:28e2:5274:acbe:6374])
        by smtp.gmail.com with ESMTPSA id s3sm8066314ejv.97.2020.11.08.23.11.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2020 23:11:18 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Luis Chamberlain <mcgrof@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Iurii Zaikin <yzaikin@google.com>,
	linux-fsdevel@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-safety@lists.elisa.tech,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] sysctl: move local variable in proc_do_large_bitmap() to proper scope
Date: Mon,  9 Nov 2020 08:11:07 +0100
Message-Id: <20201109071107.22560-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=V8s9PjVu;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::542
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

make clang-analyzer caught my attention with:

  kernel/sysctl.c:1511:4: warning: Value stored to 'first' is never read \
  [clang-analyzer-deadcode.DeadStores]
                          first = 0;
                          ^

Commit 9f977fb7ae9d ("sysctl: add proc_do_large_bitmap") introduced
proc_do_large_bitmap(), where the variable first is only effectively used
when write is false; when write is true, the variable first is only used in
a dead assignment.

So, simply remove this dead assignment and put the variable in local scope.

As compilers will detect this unneeded assignment and optimize this anyway,
the resulting object code is identical before and after this change.

No functional change. No change to object code.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on v5.10-rc3 and next-20201106

Luis, Kees, Iurii, please pick this minor non-urgent clean-up patch.

 kernel/sysctl.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/kernel/sysctl.c b/kernel/sysctl.c
index ce75c67572b9..cc274a431d91 100644
--- a/kernel/sysctl.c
+++ b/kernel/sysctl.c
@@ -1423,7 +1423,6 @@ int proc_do_large_bitmap(struct ctl_table *table, int write,
 			 void *buffer, size_t *lenp, loff_t *ppos)
 {
 	int err = 0;
-	bool first = 1;
 	size_t left = *lenp;
 	unsigned long bitmap_len = table->maxlen;
 	unsigned long *bitmap = *(unsigned long **) table->data;
@@ -1508,12 +1507,12 @@ int proc_do_large_bitmap(struct ctl_table *table, int write,
 			}
 
 			bitmap_set(tmp_bitmap, val_a, val_b - val_a + 1);
-			first = 0;
 			proc_skip_char(&p, &left, '\n');
 		}
 		left += skipped;
 	} else {
 		unsigned long bit_a, bit_b = 0;
+		bool first = 1;
 
 		while (left) {
 			bit_a = find_next_bit(bitmap, bitmap_len, bit_b);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201109071107.22560-1-lukas.bulwahn%40gmail.com.
