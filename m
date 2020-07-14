Return-Path: <clang-built-linux+bncBDJPTD67JMIPVFFU7ACRUBHRSGYQO@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E27A21E50D
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 03:29:31 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id 104sf8668936otv.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 18:29:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594690170; cv=pass;
        d=google.com; s=arc-20160816;
        b=CsOm2hCT4PrIhw3qHWfQPyRuG4YXTHqeN4AffaTO9vHiP6VVt2EXY6XkiHhyqLnlLL
         2CBAt3rxuE2Rj5BSL5PPvroVcKb7d+CMn8EZ46cZGCv1QPXLFt9Oz/zz9fW2n+CjlHcq
         SJLm6Aad4zNciM5EEdgsD+tB4/EGcoAx9f4vs96R3Zp3BK9fGhE5rLLc6+bISpmWtEFS
         1QuU/kaFpHiiPtsI8AzqmzdbNQyd8Wus5lhbPRPZveMeB9YaMHV3t9hvcpdzl8uyp2Fg
         IbG+BsbkVUaHRXSu3NXIAjIRerILYSbwqYqwwQvrNSf0BsPitVnzcbcl9/4Aw4MMdSqm
         SwMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=x/+RiicFHYwHfkPr/82Vh80GqFo1MoAohor6BUXBdZ8=;
        b=F0oem3ozs4do+PWm817FcP8BvOKffwalrU37P/YCN2RTW901rMCRvh4ScXa2eQ0P7x
         MWvli6UO34GFY/+XImUhf6ZqdGBOU7xi1sbaOn4ls0ErUNk6a6Wu3IGs2hfiIe1E0Hqe
         WYMiEhGBkr453Z0mWrciLYtFUfX1XIhmOU8I3w4r1tChC33p+mlQ7pzHrSqgGFQAbBlN
         KOxsjdfAQXsRFFMg0vIEL1YJWvN0jxJOU89H95oZMuJg+zp/xTvCRFktJOSCcFKga4pX
         f0DX6cr1WGsi6QsQZCpQQcHbkXrh4v4LJMA5K3V/PliLkD9lPUmJ08tYGehJdl9o5Mp+
         nspQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=py84OM+5;
       spf=pass (google.com: domain of yepeilin.cs@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=yepeilin.cs@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x/+RiicFHYwHfkPr/82Vh80GqFo1MoAohor6BUXBdZ8=;
        b=fwdgeyBtbgvUXYTsp3pCylR2UK+OKIL8YYNRIYsbN3Xv2TQGULOtqU90AWY/pNdx/3
         9AfZCPUUEkn8ahNezUzKLPZCNwtg6yE38dfi0fF9g8YBejOwZsTB9SXRg3qQzK8wBio7
         DWd2SXItlKwpg6kf7gwkBBJRwD26PAY2c31vUOtW5tpKhxbcrve6EW7SK5XtUNElEQho
         b5ngJ2PkdGwyIV6x9A1dxh90Q0cFrqQpz7zjX+UaMbsHkmF3r2PHUclNPe7hkIkioLQJ
         ygr2/UFGr0am5213jdWp6Vldxj5/eQaACFOgd4D8GqV9JXbnZbFjadrrubfrEu3a1DtX
         mLvg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x/+RiicFHYwHfkPr/82Vh80GqFo1MoAohor6BUXBdZ8=;
        b=nWJGy4JQ0MC1wpzXHF2Y5iMGCkKimx2QR/hFHf5bi/NY+L/VG2Pc67Tf4vL17EkveA
         06SlULz05JlYYOG26IJ04tLPzkHYBiBhvd5zgiKx3LzEVDkS805Nb4vDSqcKu/7Dym+/
         Yl4fRDgcz2RgHS+FNffNlLakbhaJiOtk7C7QjXr/YUPjK63owg1TricC69++WeZ9ZoK8
         P7lx0Dl0N20q+ti1EWJgvAMnGIOyCQhiwZ9VT/GY9FffWfym4ohZk4WCUa/hv7qrB1sB
         S8jjuEvqNHJawv8zdrTkuLYFkTOCxwyZQhUyjCKa5CHcE1xzc7s9UpbJP6habyPGKbK2
         KtVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x/+RiicFHYwHfkPr/82Vh80GqFo1MoAohor6BUXBdZ8=;
        b=A5ER1hZXF4l5IE08CHT+7DytXhaPpXRJtnTt1hObwLXKt0524u7aY3l9qnGNZvs3Xb
         3xQtC7M0UPKjB17/GOpjtr+L4mi99kel5FETrb0OGr2WEYCANXhfhZ2dp+hSXviRO2ic
         jz+Jv5VKjjB2tTRkyKjy9ZA1JYhWwFUzt6IGHAQptvD8L8OSN197lEq6R5va4d5KrLzt
         kSOzLzKlazhhAJCkMQvWM+CrN2jiklBSLBEseFZS14SnbrBn7tQX3Aa5d2i8MAkUBAy9
         GJ1xUUodUVVUjsORO+0JvjXArRsoJ2dJcsWVcOADgs9zuudQX0NdBk3MaxIMenE5r4p+
         NkyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zyUMeyxJ2/8QVwb6JTSSrKeATuK6ybeIzUOfea+PzdRMAYqfN
	8XEE1WQ+1Rv1mrCKNeLKguQ=
X-Google-Smtp-Source: ABdhPJxud4un4OEVYhUGEJ7MKWP5102O4AA0dSJWKn5nY/CIOFnnBze/CZHeZ8n5fgeq9Tj22G3fEw==
X-Received: by 2002:a05:6808:8c:: with SMTP id s12mr1910501oic.45.1594690170323;
        Mon, 13 Jul 2020 18:29:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:72ca:: with SMTP id p193ls1352095oic.2.gmail; Mon, 13
 Jul 2020 18:29:30 -0700 (PDT)
X-Received: by 2002:aca:f5c4:: with SMTP id t187mr1976623oih.0.1594690170043;
        Mon, 13 Jul 2020 18:29:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594690170; cv=none;
        d=google.com; s=arc-20160816;
        b=hUuZNK9QmQ5ZSw44ryOcw1z2YvLkXInJyQ+TUhFjHlgTOb5OogB9ufTvn65OccYBwy
         hZe2ZzAaFAwQEqoZoy4PMDaM+zsfZ/SbpD8knAvUQ+fCi7NYUwiGasZ89x5pBWqbHkGI
         nr0cGXMw0vxMLg+SbyVWuyFHrH0Rx/39Zrl7rzPQvXnpTzdzggJr0K3MDyIsG6aMceJA
         PyHEQ/EyYeSWMrqELSQymefHVyiz506cSKz45vgA+JrRVGtkXFMHqMyFWj3pfhqByneU
         GnQT/t56tn5LsKyzNqt8xAnM5rqXobM+iiggHyNIX5tqej13cg98sFHlotSjLVhubHwb
         i+hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=R5IIzVMOgCGftVB47FAaShDA0o6roHJ+qQ1SXjjeBPw=;
        b=D+P5aT7mPWtx5A68bfsMv+o23uwk8gsTDwn+5hVASpDDO2e5sG7oocQ+AYQD/KrWse
         xwTLkvccDTCBrg5zcLSQVH1PTqklDoe9m44ONZizO6NLCaZdmSDt9vDXDZIazbHzViUU
         Wj152yaUQR49XM3Gv6puUjtFBvAhL2BnJZlKXVDN6LwfOLTVpEUMpFsODqJKtNkAhxRX
         ETs2ptTw6iZC2Nt2rKD0Z2v1d1i6+MzOzIzbw+uwA7MooV2byQEihJU8j0wTYPTAiN5n
         RBW6bxzfAZ2Rw62q8RzT/shtm4oTUNXflbF47BFy4pZLwmGsdbNCVx1KZOeP22XayAvC
         J+zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=py84OM+5;
       spf=pass (google.com: domain of yepeilin.cs@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=yepeilin.cs@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id m23si1007091ooe.0.2020.07.13.18.29.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 18:29:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of yepeilin.cs@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id c139so14195355qkg.12;
        Mon, 13 Jul 2020 18:29:30 -0700 (PDT)
X-Received: by 2002:ae9:ea13:: with SMTP id f19mr2317534qkg.331.1594690169776;
        Mon, 13 Jul 2020 18:29:29 -0700 (PDT)
Received: from localhost.localdomain ([209.94.141.207])
        by smtp.gmail.com with ESMTPSA id w28sm19125827qkw.92.2020.07.13.18.29.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2020 18:29:29 -0700 (PDT)
From: Peilin Ye <yepeilin.cs@gmail.com>
To: Andrii Nakryiko <andriin@fb.com>
Cc: Peilin Ye <yepeilin.cs@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	syzkaller-bugs@googlegroups.com,
	linux-kernel-mentees@lists.linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [Linux-kernel-mentees] [PATCH v2] bpf: Fix NULL pointer dereference in __btf_resolve_helper_id()
Date: Mon, 13 Jul 2020 21:27:32 -0400
Message-Id: <20200714012732.195466-1-yepeilin.cs@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <CAEf4BzZRGOsTiW3uFWd1aY6K5Yi+QBrTeC5FNOo6uVXviXuX4g@mail.gmail.com>
References: <CAEf4BzZRGOsTiW3uFWd1aY6K5Yi+QBrTeC5FNOo6uVXviXuX4g@mail.gmail.com>
MIME-Version: 1.0
X-Original-Sender: yepeilin.cs@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=py84OM+5;       spf=pass
 (google.com: domain of yepeilin.cs@gmail.com designates 2607:f8b0:4864:20::744
 as permitted sender) smtp.mailfrom=yepeilin.cs@gmail.com;       dmarc=pass
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

Prevent __btf_resolve_helper_id() from dereferencing `btf_vmlinux`
as NULL. This patch fixes the following syzbot bug:

    https://syzkaller.appspot.com/bug?id=5edd146856fd513747c1992442732e5a0e9ba355

Reported-by: syzbot+ee09bda7017345f1fbe6@syzkaller.appspotmail.com
Signed-off-by: Peilin Ye <yepeilin.cs@gmail.com>
---
Thank you for reviewing my patch! I am new to Linux kernel development; would
the log message and errno be appropriate for this case?

Change in v2:
    - Split NULL and IS_ERR cases.

 kernel/bpf/btf.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/kernel/bpf/btf.c b/kernel/bpf/btf.c
index 30721f2c2d10..092116a311f4 100644
--- a/kernel/bpf/btf.c
+++ b/kernel/bpf/btf.c
@@ -4088,6 +4088,11 @@ static int __btf_resolve_helper_id(struct bpf_verifier_log *log, void *fn,
 	const char *tname, *sym;
 	u32 btf_id, i;
 
+	if (!btf_vmlinux) {
+		bpf_log(log, "btf_vmlinux doesn't exist\n");
+		return -EINVAL;
+	}
+
 	if (IS_ERR(btf_vmlinux)) {
 		bpf_log(log, "btf_vmlinux is malformed\n");
 		return -EINVAL;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714012732.195466-1-yepeilin.cs%40gmail.com.
