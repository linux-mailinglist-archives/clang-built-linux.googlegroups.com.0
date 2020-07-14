Return-Path: <clang-built-linux+bncBDJPTD67JMIJH2VX7ACRUBCQSSEYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DAE21F8C9
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 20:10:28 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id c1sf12464234ilr.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 11:10:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594750227; cv=pass;
        d=google.com; s=arc-20160816;
        b=PiL4u1orTnspWogOmtOxcEhVLjhiKPWINJWF4i0jbggKBWC8COXgGZLS9gMp1B0fl+
         xTY9lSk2O68bXP9SssqnkeCxsv0pTNPyDC6bKDvIotWZWbFOn3OHSPutFSJUFrbkjsHm
         H5AQBO0DbpCxlZuUxVmF8xOByupckJiCHP7zi+UFP7qCn9Vdx2ZQN7pg/gQWmbL9ZLMN
         e9pUKS5NXzEhvfAbb3iBZ+5oP5j2pQHjwpZGfnr6V9fusjRET/LxJAB+sNbkAq4cbagi
         veSWi0wv1Xu93TO2beYYDjEMdg7Ycy7Bb6x9cKdcE82M9P1WV5nyuh+OTfI2hga1yLKr
         r5VQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=3C/RrNGByhG92CvlsywinG+MDl5Np6hP2NQLXAyZMsU=;
        b=ceoaEmAC7Ah0It+GqNZn9tl6g1eubFIdl/qqu26JexfOp8v+zh9XI0TF73lS+FqGxW
         5I1p/0SX2nI8DtVCWpZChbYnO0hYBaw/BZfJBHIdz15gRO4kHk/m43BEfERCty3FzHFe
         jp+0oDRW/VtcJEaxR45vy8Lcbnsh7dIJ3EaYEhXVqQl8tqJkFlqth+AxlvuJMnHtM32v
         TFD8SwLpjsT/EbX2r/DiGoDLzQsqEaUX4IyDrS5aktKM64EHQV9rtD7en4PgDuHhYTRy
         fvI2QbP/cG4ZZgp2tDA2I0hH0woowqDhUHpP3OVQd8tdClSAU93pzfeXyNhc8oGUgRWU
         9Q1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WsiJGXVq;
       spf=pass (google.com: domain of yepeilin.cs@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=yepeilin.cs@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3C/RrNGByhG92CvlsywinG+MDl5Np6hP2NQLXAyZMsU=;
        b=ezdOtGFd/6X8lgGVqfLYwpgf5qImmIDLP/7cQK1gIyfOuUG3Z6L1IpOad0RuCB4MLO
         wLdwS/Q6adftULtizUDhmqzk39jdpokZ0TWoov+g84+XVA2fKxKaO6sPqId77xr6mL2b
         bqnEGkU5/4HSsNdnsNCZ+F5NYZFFoi9W7HowlJ9Q6X/fVateOXmEpzUAVrqOmCFilhqN
         RYw2+0pfPAC6GKEJ5uWx+BpUc2VWDKBBgRYD5UAHnTOiB+O4nbMSVJv8AWQLDqaasIKF
         +c8Y1gMTIxNOA6fC+/kCWt2KYs3e56OKbOgbPNQgw7mCl3eVPizKgpfZN3G08idaC+6f
         iN9w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3C/RrNGByhG92CvlsywinG+MDl5Np6hP2NQLXAyZMsU=;
        b=r+6RBptSUmOH3OjWgAIMHbbXH+yiK4rnqYK2n53ke767GXvuKRcTl0iCDc9oQFkQ0s
         yKWFqZhHSzr+igYvskUWoUTO8fj2XM30HggwUyZGdxVjXRxQXlMMUBQZ/QEuBZFf151O
         QlVmUFRGA3+MlrpPiqy1znM4Sumt4QvEEUuv0Og0lpngJndGjAbctBvkkd6UpLo/3V+h
         KxMuWavzg/Khbr6EY9oUwx/dbJeqfDKQWHveTL9cOn5g4ypOackZmLO/XIiY0oBi9YPA
         dYqQSLLwLVpBVBd5HiKSlrAqj7/dVNSf3PPXIslbcw69ak3gUuD06N+qV5FmB0phVSnI
         CAJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3C/RrNGByhG92CvlsywinG+MDl5Np6hP2NQLXAyZMsU=;
        b=HDRAua3viYAf7yEgej8W3pbYTOeL+sIZWWIHQw8Qd1Gw1hUqmB+D4v+uaJDwvpXuSA
         9aZdSjxE6PFXd9TrexITTM/mRBFvhvst3wEzDi3+HdKvvshN4/L89ylFt4cEw/kIulTc
         rlUdjQBfXgU0o5Z5FcsUHDN5isssTZl+N/bTs2TDbtBxjlFrVCjKQK1iPoPv/kYptjiS
         eGv7OW6JmTWE6DQ736p6qWneQhu3uSVZoJfC+k/ac9eyWmAhS0IjP+dICvEkdp5KpvdO
         MoZ2LOEfDPuwg80MwEdkDCXnGrJFGhU3Widz6kgah6yxfpiyByNwnMk+bO1w9h4rC/4e
         eN2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533OQRRJMVSpKdzo/dmZKSBi9EkzRmJrK2TrOBvLrJ40HyL8XnYo
	el20ahlLbbjVzUPBeWN40Zs=
X-Google-Smtp-Source: ABdhPJzHwbQlyX8I/qJiXETMDR8//XxmtyxY+kN0S0ynthdUaShW92xZcyaIruA3GV/DfN2aBjFg7A==
X-Received: by 2002:a02:b899:: with SMTP id p25mr7462066jam.115.1594750227790;
        Tue, 14 Jul 2020 11:10:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8788:: with SMTP id f8ls2110096ion.9.gmail; Tue, 14 Jul
 2020 11:10:27 -0700 (PDT)
X-Received: by 2002:a5d:9503:: with SMTP id d3mr6240427iom.154.1594750227401;
        Tue, 14 Jul 2020 11:10:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594750227; cv=none;
        d=google.com; s=arc-20160816;
        b=BlB5K1SUaL4vuv2EeKoMZedN/e/xZwsOogroNuAkrignnAkopj6xcPG0BQyMkhqrQc
         htcD2Ma8Hon0crzjCMXzHyahiMeXODYHejwqxN1BNoYNvl/eHv2SL/rB10kPuaML2Wgc
         aSrA7O3Umd0nvgdl/Cnl4jZs7xcNcku41vMZdUHVLu71dr+c7UE3/SHWF7P5c3KIFUig
         hrJna7y8Q5TAhfOwAgRHrRruSqOMqxsMC7eQSzTXnJR/l70KQA0WkphlcwsrIayoDI5q
         yktatkQb/zr62hH517OhD9N+T34fEQeqlbD31XoEihm7Nxk3rKJYxmCDf4PXCOK9jIbi
         UpBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZX4l9y/mb02MIUOaKSz1lj12ECx0wlEAm51QAfF6o/8=;
        b=fJHSpm9aw6a25CNCunmJiXm1zOaoYJ83N2Zjb+ETdrINZrTcd004y3huv4UseLz2Yg
         5Ql4wvKjuYwAkCfblCDbDhvOu7JC7/yfaBL7VPsbtkPBFa3ge18GV5dBe5ckbs763OM7
         e5UPqlHLQTi3/2bBabHM7pbH4DGjJgnTKwO/ZMxlnwjfuhtN/u8Ty9INKaF5FGARysXh
         Lq8PFJcP0RszPH7rFmlasIeLkRoQYP4n8wZFzx7EiJ99TK3kRYSHGT6SuSwhuX47VhXc
         DR71XCvq0t2LobMZUiKbi9QhA+mdS6UT3ORNdsgcPGry5kJmDKWMwMHszxnO/SZUsAiQ
         gCog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WsiJGXVq;
       spf=pass (google.com: domain of yepeilin.cs@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=yepeilin.cs@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id f15si950170ilr.0.2020.07.14.11.10.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 11:10:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of yepeilin.cs@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id o38so13549410qtf.6;
        Tue, 14 Jul 2020 11:10:27 -0700 (PDT)
X-Received: by 2002:ac8:3028:: with SMTP id f37mr5775930qte.351.1594750226967;
        Tue, 14 Jul 2020 11:10:26 -0700 (PDT)
Received: from localhost.localdomain ([209.94.141.207])
        by smtp.gmail.com with ESMTPSA id n64sm22663726qke.77.2020.07.14.11.10.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2020 11:10:26 -0700 (PDT)
From: Peilin Ye <yepeilin.cs@gmail.com>
To: Andrii Nakryiko <andriin@fb.com>,
	Alexei Starovoitov <ast@kernel.org>
Cc: Peilin Ye <yepeilin.cs@gmail.com>,
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
Subject: [Linux-kernel-mentees] [PATCH v3] bpf: Fix NULL pointer dereference in __btf_resolve_helper_id()
Date: Tue, 14 Jul 2020 14:09:04 -0400
Message-Id: <20200714180904.277512-1-yepeilin.cs@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <CAADnVQ+jUPGJapkvKW=AfXESD6Vz2iuONvJm8eJm5Yd+u9mJ+w@mail.gmail.com>
References: <CAADnVQ+jUPGJapkvKW=AfXESD6Vz2iuONvJm8eJm5Yd+u9mJ+w@mail.gmail.com>
MIME-Version: 1.0
X-Original-Sender: yepeilin.cs@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WsiJGXVq;       spf=pass
 (google.com: domain of yepeilin.cs@gmail.com designates 2607:f8b0:4864:20::842
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

    https://syzkaller.appspot.com/bug?id=f823224ada908fa5c207902a5a62065e53ca0fcc

Reported-by: syzbot+ee09bda7017345f1fbe6@syzkaller.appspotmail.com
Signed-off-by: Peilin Ye <yepeilin.cs@gmail.com>
---
Sorry, I got the link wrong. Thank you for pointing that out.

Change in v3:
    - Fix incorrect syzbot dashboard link.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714180904.277512-1-yepeilin.cs%40gmail.com.
