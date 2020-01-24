Return-Path: <clang-built-linux+bncBCP7VQF36ABBBYXFVTYQKGQE5WGBGPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id A05F9148D85
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jan 2020 19:09:39 +0100 (CET)
Received: by mail-yw1-xc38.google.com with SMTP id j185sf1926684ywf.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jan 2020 10:09:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579889378; cv=pass;
        d=google.com; s=arc-20160816;
        b=FSffPMQ40MYfME1yuD0ox8LdVjnrB1V15+Lj4+1wBfqGRnCh6Iyt2DjO2f6QJhbSdp
         2mGctshGm56m5EYV6DRk0Bs7N1FCv0/MKymu0JeiaYySzcaMC18bRn2UjolHIfSNwWjJ
         MbFIomRSPGbwIhXbQ1ROA6CqqJPW9SppnZyUoQ+Xh3BkhX/iOVWaQarZFbHIf2luXl5O
         urjaYh9ESp6GMKo8i0qzv8hOI/Dpn1nfHJ5l7n4dDXcVhvtDwVxxbDTRWPBofidNfX+c
         OSwsIyT1y07ErgQZ/BHLwPYjqp3kjnE7dUhwekNHvBjUob4NJLjz7OgrtYW6EB8RKeCe
         JW1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:cc:mime-version
         :message-id:date:subject:dkim-signature;
        bh=41lB5aHS8GeL2Ph0WMk8Vs5f8O1BsgmmDy29TP93ENc=;
        b=lc47phdRMZlsM0DFYlhmheokiPbx1aIqD8a7Q5No1bfOfyh4bvl5m9XLcBfiABoV6u
         xe/1cKsSrxr0seGTrisKrCg03Dh9O93JvpOlW9okKqmKJqTTKF8EOGnVDhv78moilB4H
         ciBL3LYEFRxnGjXfSXVjO8Zp0X5TpQASbOlkagSENCmBceWekoKnbtyTTSpRBNkzQY22
         QFHmLc6725XlAs9MFR86C7x3E+fuvHw+I3/SWGdLXNLekcoepmihK1afAAKgCnTZAOzs
         oQKzMX4+zrtZb9lHeMFpc27Q0fNuY9zQZabU8U8BlUvKTB6zEmzVIycZM3mOnp2dxlFh
         uR8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uyI37eJ5;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:date:message-id:mime-version:cc:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=41lB5aHS8GeL2Ph0WMk8Vs5f8O1BsgmmDy29TP93ENc=;
        b=EJFTU9ZxIs/Qnt1UwLCNVZvMmRqNTg5Gs42c13jc3XBdMb6ZVd4fjJcF83OLa2C/pR
         XO19VhI7qwdP3pskdC6EH5qDxuRI587Q6pqyvfusA1i6w2aApyp+CUasjQDiFPFzB0PW
         kUzHSL8GhsTEAMQ78ka1iJhIWr6yawGZo3TgLtrT91IDpmv510wvEHcunQrQ9SFtDj70
         aIXDAYIK+oND3itCnohpuQPDWtJdfUcPjGBk0nGMfuCmaFFVGt7NxYBwRY3qGe8dgLZK
         FwUdGzq9uXGddbMiZ28LeDFXAGmQepvOJITtyyj78w78w9jf+BykK9ta3U+V04hIoICH
         2uTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:date:message-id:mime-version:cc:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=41lB5aHS8GeL2Ph0WMk8Vs5f8O1BsgmmDy29TP93ENc=;
        b=VNlyFBxcfvzGF0IgEKLG1USsi9DttbhNcW+VHVWC9nN+Vd/uaMhmcRHS+XaHRtkPab
         ZI4FK2ZC8sMpAkggzdo7DFu9zdmNyQ8tfDauVFil2Vnno+mwqR9hfhgl7vHM6QtaR4Ii
         T0OGlK+S+gUOmwAswfwGoA+u6RnM0phNn0GFDcuEnqSdtMoSItQoXIlO8l6FntmUyeVm
         KBvmCbwZ4qH5O6PKICNRG8eVKQprS7WSpx2UXAn+zSay8MEZwBWurYu+JiABq2JQg2A7
         zbWsYPudmjMIb1RUpXkYYU/etMAeXrqE8EjPZzOyabGj+7FW1hSmT6QsdnFKmCAbpps2
         r7mg==
X-Gm-Message-State: APjAAAWRwCUrLRqmcstRt3XvooQnz+1deS/m6pOc2F1StYW4xQJzVJi6
	kDBhQhtrh7YidvWPTeiKPqc=
X-Google-Smtp-Source: APXvYqyGT01PjK6zMA7uKajF7FPK9aRCs/TNHK+30AEOvpzcXr2nLf3/a4JvsOB8seccWXaZxn5ncg==
X-Received: by 2002:a25:5944:: with SMTP id n65mr3319840ybb.291.1579889378666;
        Fri, 24 Jan 2020 10:09:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:cfc1:: with SMTP id r184ls569725ywd.9.gmail; Fri, 24 Jan
 2020 10:09:38 -0800 (PST)
X-Received: by 2002:a81:524e:: with SMTP id g75mr3066682ywb.458.1579889378345;
        Fri, 24 Jan 2020 10:09:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579889378; cv=none;
        d=google.com; s=arc-20160816;
        b=F58EKgs740cx6IFPo7OliVCWZF965WuKctd7W/WNZSTLrZJn0cKu+wQz9c1DlEU7MO
         Jt4eD0WuzZ7d1Lbqj0eFEtX7Qh91D8F6xusbV/IYLbxIVvOgBSFYb6xJwzwaYJx9/ODf
         uwHeRLViV3mdhqyxlhBSI3wFItwL+5zR/8aUxwJy7sx1JTKs/Ni/uOToVC3PxA7g3Zrd
         d4aOpio76BZpWNMtGH6MS1UGHXEZcpz4d+xnAgHZcTWqKqcJrvVaaHiOelIn5GR2ICuN
         vaxZ5XMo7dIgL6jbOlG3bTJFD5H9DEk6zoqpwI0gIecFeucLFSazVI2dNUVLEEMashgy
         QpxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:cc:content-transfer-encoding:mime-version:message-id:date
         :subject:dkim-signature;
        bh=tl33NMB4xb0Oa3P5bsoXvWl9n72K/Immm4it2JBZlyA=;
        b=YrpOymPSTI0LhxinNWmSLSPis/gqSdVHt2dN9aEBCbzJ7dwybol5dY6sFSW/RS1qyt
         5Lc9Upn7tJMnGu+IwoQ2QazVBhYQeKMW9fuWifz6ama3rVGQtjlkSgZyjj3u5+LX6Br8
         dxWkh/TsBkR72hw1x7VH/EF5tQlrdAETSxanWSZXgqJ0GYePhNDuo97Fr80DNLnnof6c
         EP9JYcn0mdHFp19ehStGV9PJ09ZtGguz/Jmz2x3HyyPNSENQq39uNlpteuwrGE3S+M3a
         ivIVx46wm2t31QkS2T2HwN4nhNhHhlsyCiD4aN5uM09Ib8yodjyt0PYMo0QT93VrUd8i
         K0sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uyI37eJ5;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id e186si319024yba.4.2020.01.24.10.09.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jan 2020 10:09:38 -0800 (PST)
Received-SPF: pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id t6so1114067plj.5
        for <clang-built-linux@googlegroups.com>; Fri, 24 Jan 2020 10:09:38 -0800 (PST)
X-Received: by 2002:a17:90a:d205:: with SMTP id o5mr540430pju.46.1579889377253;
        Fri, 24 Jan 2020 10:09:37 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:bf69:4011:cfff:c9e3])
        by smtp.gmail.com with ESMTPSA id q10sm7192274pfn.5.2020.01.24.10.09.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jan 2020 10:09:36 -0800 (PST)
Subject: [PATCH] selftests/bpf: Elide a check for LLVM versions that can't compile it
Date: Fri, 24 Jan 2020 10:08:39 -0800
Message-Id: <20200124180839.185837-1-palmerdabbelt@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
MIME-Version: 1.0
Cc: shuah@kernel.org, ast@kernel.org, daniel@iogearbox.net, kafai@fb.com,
  songliubraving@fb.com, yhs@fb.com, andriin@fb.com, john.fastabend@gmail.com,
  Palmer Dabbelt <palmerdabbelt@google.com>, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
  kernel-team@android.com
From: "'Palmer Dabbelt' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-kselftest@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org
X-Original-Sender: palmerdabbelt@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uyI37eJ5;       spf=pass
 (google.com: domain of palmerdabbelt@google.com designates
 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Palmer Dabbelt <palmerdabbelt@google.com>
Reply-To: Palmer Dabbelt <palmerdabbelt@google.com>
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

The current stable LLVM BPF backend fails to compile the BPF selftests
due to a compiler bug.  The bug has been fixed in trunk, but that fix
hasn't landed in the binary packages I'm using yet (Fedora arm64).
Without this workaround the tests don't compile for me.

This patch triggers a preprocessor warning on LLVM versions that
definitely have the bug.  The test may be conservative (ie, I'm not sure
if 9.1 will have the fix), but it should at least make the current set
of stable releases work together.

See https://reviews.llvm.org/D69438 for more information on the fix.  I
obtained the workaround from
https://lore.kernel.org/linux-kselftest/aed8eda7-df20-069b-ea14-f06628984566@gmail.com/T/

Fixes: 20a9ad2e7136 ("selftests/bpf: add CO-RE relocs array tests")
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 .../testing/selftests/bpf/progs/test_core_reloc_arrays.c  | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/tools/testing/selftests/bpf/progs/test_core_reloc_arrays.c b/tools/testing/selftests/bpf/progs/test_core_reloc_arrays.c
index 89951b684282..e5eafdab80a4 100644
--- a/tools/testing/selftests/bpf/progs/test_core_reloc_arrays.c
+++ b/tools/testing/selftests/bpf/progs/test_core_reloc_arrays.c
@@ -43,15 +43,23 @@ int test_core_arrays(void *ctx)
 	/* in->a[2] */
 	if (CORE_READ(&out->a2, &in->a[2]))
 		return 1;
+#if defined(__clang__) && (__clang_major__ < 10) && (__clang_minor__ < 1)
+# warning "clang 9.0 SEGVs on multidimensional arrays, see https://reviews.llvm.org/D69438"
+#else
 	/* in->b[1][2][3] */
 	if (CORE_READ(&out->b123, &in->b[1][2][3]))
 		return 1;
+#endif
 	/* in->c[1].c */
 	if (CORE_READ(&out->c1c, &in->c[1].c))
 		return 1;
+#if defined(__clang__) && (__clang_major__ < 10) && (__clang_minor__ < 1)
+# warning "clang 9.0 SEGVs on multidimensional arrays, see https://reviews.llvm.org/D69438"
+#else
 	/* in->d[0][0].d */
 	if (CORE_READ(&out->d00d, &in->d[0][0].d))
 		return 1;
+#endif
 
 	return 0;
 }
-- 
2.25.0.341.g760bfbb309-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200124180839.185837-1-palmerdabbelt%40google.com.
