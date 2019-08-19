Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2WO5DVAKGQEXLOMPZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C54991C15
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 06:36:59 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id x24sf351388lfq.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Aug 2019 21:36:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566189419; cv=pass;
        d=google.com; s=arc-20160816;
        b=acmkQltsta3qE+rjhqvhv29EnvJU7cIX2SUeEm4vtzigImWmrHcWNCU4y2wD0dj882
         ffPWXd3cbe2UEKSufCW0ipG5CbsvY9N4n75RMpnTniJ013QWoUELpgjliFDsZJ9RjC2t
         vuWzKIF4JJPKoS9OzYRvsEEuT4eFJYwyivirYF4NWeSD+CVG6nG7hr9RAWmZmVJc2vnx
         fFipOJ0kRNW3IuQ6SO+cTXAvk9+bf1MrRxMC3hjHz+yRGOE6bN4KVtDBPmF0wjT8OLbO
         3Ws83jSiONVGdYRp0VMh3b+3FwOEz+0T7NicKb7lxZP/vPg2dKgAmTigO+KMz/95bpGe
         zc2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=Oor2Q5h6d7h6jFP8D9icPbk//Do0da6azlDavGcHBnc=;
        b=hkim0Erxaoiy36Q/gEZVrVOfGBaLFs/oLtmTwDoB/VS75Zr6HN68LyEL96QmQReyV1
         mOmf9kL3N8ip2U+IRnCl0YhKBc91uhJi+bjTUMW2GzwKw/1fum73je5pfYrjAqOLAGFc
         npMwZkeKwUf+5vrNE4/ByNgfXKRSEqpKDOX6u6QsClCjIG7KCVqI2fXAksq3+k4cig96
         XvYmKGyzy4Yary+9s2uaWF0rXNX5ILQRkqJpigZSUhcmFkL38yxE/07oEj5lfvZTISao
         Wf2VBw4fVSzsC0OMIUHDTiZcTEPrf9WpzNf2gnYQoJ1SOjVJ553xeEVRq3uNrOSkf+hj
         skWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uYH4KbWl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Oor2Q5h6d7h6jFP8D9icPbk//Do0da6azlDavGcHBnc=;
        b=fHN9CKATqzy5OKrErU4kN4qlXDmbeJasWxyssrze0du8nFUnY87+7PBRiQyMnpilf9
         1+hFec0BfzN6MWjnyB8wiB5RiJI4g5cx9DIcQ+crYdOVsVcl25/9JRvGvZuc3ATPDPCt
         arJPn7/sTlRWc7JfWsZnKXk5rlak88CALjlKqwPYVeY4F10FPcPmql2kdDahDUxKrX6F
         v6q/hX7ERHr0U0ipK192a4+MoPTHBLwjlcscHOIhqX4f5oYpRa+45XG9xbuJKTFYetK7
         IDI3F5XcTmOQ6uwoigX8SHOooOHGeCkCyAgjgb8psj5H94KITeemCCQ6pEADgN8DnLjh
         SqXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Oor2Q5h6d7h6jFP8D9icPbk//Do0da6azlDavGcHBnc=;
        b=JFcrPgW8zEbkiFsbb4fgpBoTKAEvAlkVVUAxr2A7wqx4sh/EPUJFByh56YNSlNq4yY
         p6E80l5o7FfaU0Tp9HE0irLnDdbOpUaSND8cbeGgM2RZwa0oD2lCbcj+2url1dhmqteP
         Xy5kD4DIWG57SCT2+vsMQKGlqyg17bmGXe+930f6hhDnjrTc3z/VxOjGy1v24eGMh5CU
         YGliv7HAPkDVaAFYIG3u1F5YHAstiYY9+gxUIsmHx3Eo9n6nrkBwqDXhxaiRGdROUe46
         rJBfkQKueIkHBfkwsvS9Ae4rfHHmIgATnDCsAmGz1iD9KwJtXbeOz4hYWzlqXThm/WWR
         vDUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Oor2Q5h6d7h6jFP8D9icPbk//Do0da6azlDavGcHBnc=;
        b=MQEFwuvHtsc8B3sv4y2mBw37XxHuXv/Z/wtHbLvjY+re/eFcj54kbmBTBb4pCCIedm
         YqaDZmQbLpmYo53XhH557afbv/DWnyu1oOnsNXnXQWczoPGTtk+I5c9BwvwvSq7NFS2q
         8XzXTq1JqPZmsTPREEHyway6ICHWtndvZgN8SM0C8mVxCHd9wZNttQkYqkSaYUlj70Jj
         koZSnTRmIan0z2RoOwThC5+cHZKT6J/DZ9oNPBG5jr1SiRHuPxp3CUdyATBiy2HsJbNN
         X9WKhNFSv8rxjeG/8fqLSCnivDxKn9m/Jq9PqT9u0XEpeCAjibjEP2eFljhFtlHV8i1V
         8oGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUxGu+4lQwQE/eKDDw6NYAQruqPWzN52h/5xShxmhJq876mb1aj
	UoOlsjvcos+7E8QfJYABunw=
X-Google-Smtp-Source: APXvYqyCTMo1P0kDpLHKyGmjrkSPa1O+96FVXwbEGp0LFZ6F33UpSpcPaR3qDzONhrcQ1rYzt3h9yg==
X-Received: by 2002:a2e:8059:: with SMTP id p25mr6712819ljg.120.1566189418888;
        Sun, 18 Aug 2019 21:36:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b60e:: with SMTP id r14ls1490278ljn.13.gmail; Sun, 18
 Aug 2019 21:36:58 -0700 (PDT)
X-Received: by 2002:a2e:b042:: with SMTP id d2mr10995596ljl.202.1566189418466;
        Sun, 18 Aug 2019 21:36:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566189418; cv=none;
        d=google.com; s=arc-20160816;
        b=VTQ0gbvDlsR7bUZzgrs1tzpivzNYvEYBsMeIKkCLd4BT2S7In2hTA6zoLTMmc23obO
         WIBeBaHJ7PxI9J1A2QGkEi9mywl8xXuBdwlUk7jgVC0eaW+uiT2gVNx0FPspNXBgJpJD
         dr8fRicIaOHgtdCagqpYQ29+HyPQDu4CoIzYtv8OHNnU5p2fKBRJfwUIvadp8BtWqiLu
         9QIsJmu4BIMYDM+AmsCyvIAyZFpMXJw9FRblXj1Q6O3Qfl0eoNw/AU2Do53X/jOWW7qw
         /LWOxi13jQ46666bCPSCPS0P+rFb7dOYDV8ECNjQVh47HOCCIYkyAF59lN7fuBxYQVRQ
         ybog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ZUCw4jAs77fJWvJ1Lbk9AJyiu5YLLMkfP4oKtMz1NVw=;
        b=rrCZA/eppcZKeVkCTTcYDU23BqlwjgYsWEfUXPZP7kL3c8QTFuQ9iDdMhziqEjl7XP
         +jnndHJSR7AHBtXDscXeGlJ5LqdaCeLVqAPYtglK1cf7WWyD3TyVSyFR9/ZmYI52ilmz
         PQ5pZcI/pXvKzo53/4Y90D1dLuLgPkGfMdY4ljDrraj9s/JMpGSLrYg9gx/cAPJV49d8
         WCg7eSKaJY7fcI5W+SpesbGrpKHO6xh+TpfsRBMcLiQgb1iXxfjK5SdcDgUDgEpybhpA
         SwTNYw1+SVU7SvFH83pH9Y+XcYBcxv2Q85s4e5H5bCcT5cksXqiQbKgNjCOkZLSXktxP
         4R8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uYH4KbWl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id c12si170211lji.0.2019.08.18.21.36.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Aug 2019 21:36:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id r3so7206245wrt.3
        for <clang-built-linux@googlegroups.com>; Sun, 18 Aug 2019 21:36:58 -0700 (PDT)
X-Received: by 2002:adf:de02:: with SMTP id b2mr24526170wrm.204.1566189417661;
        Sun, 18 Aug 2019 21:36:57 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id j10sm15218526wrd.26.2019.08.18.21.36.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2019 21:36:56 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>
Cc: Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] test_bpf: Fix a new clang warning about xor-ing two numbers
Date: Sun, 18 Aug 2019 21:34:20 -0700
Message-Id: <20190819043419.68223-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uYH4KbWl;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

r369217 in clang added a new warning about potential misuse of the xor
operator as an exponentiation operator:

../lib/test_bpf.c:870:13: warning: result of '10 ^ 300' is 294; did you
mean '1e300'? [-Wxor-used-as-pow]
                { { 4, 10 ^ 300 }, { 20, 10 ^ 300 } },
                       ~~~^~~~~
                       1e300
../lib/test_bpf.c:870:13: note: replace expression with '0xA ^ 300' to
silence this warning
../lib/test_bpf.c:870:31: warning: result of '10 ^ 300' is 294; did you
mean '1e300'? [-Wxor-used-as-pow]
                { { 4, 10 ^ 300 }, { 20, 10 ^ 300 } },
                                         ~~~^~~~~
                                         1e300
../lib/test_bpf.c:870:31: note: replace expression with '0xA ^ 300' to
silence this warning

The commit link for this new warning has some good logic behind wanting
to add it but this instance appears to be a false positive. Adopt its
suggestion to silence the warning but not change the code. According to
the differential review link in the clang commit, GCC may eventually
adopt this warning as well.

Link: https://github.com/ClangBuiltLinux/linux/issues/643
Link: https://github.com/llvm/llvm-project/commit/920890e26812f808a74c60ebc14cc636dac661c1
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

I highly doubt that 1e300 was intented but if it was (or something else
was), please let me know. Commit history wasn't entirely clear on why
this expression was used over just a raw number.

 lib/test_bpf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/test_bpf.c b/lib/test_bpf.c
index c41705835cba..5ef3eccee27c 100644
--- a/lib/test_bpf.c
+++ b/lib/test_bpf.c
@@ -867,7 +867,7 @@ static struct bpf_test tests[] = {
 		},
 		CLASSIC,
 		{ },
-		{ { 4, 10 ^ 300 }, { 20, 10 ^ 300 } },
+		{ { 4, 0xA ^ 300 }, { 20, 0xA ^ 300 } },
 	},
 	{
 		"SPILL_FILL",
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190819043419.68223-1-natechancellor%40gmail.com.
