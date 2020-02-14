Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBYUKTPZAKGQEOZXLXWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E9015DED5
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:05:55 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id d14sf8116155ybj.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:05:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696354; cv=pass;
        d=google.com; s=arc-20160816;
        b=lYbujHJuQYSC0BDaN5muYJC1kEHeSqIF8PzXXGo9CVW/J9GMC0mAsL5ScKZqID/W+D
         2tLii24b7SdXmRc0ml1Dsp/SOWDObjvvUDb3N/5svRFz/uafYoapz+hgLnisaB80KYE5
         7uqIOptUkjW5Ec+cxQOL/kDQDEKsiUE9I81HYHwhpbz0tJh14UwiXmXSh8Z6L0GpXrfg
         s1quzVYMUMh1g+daxn+lxH2fY4ATP/IyUw+yeuv8yMIPkqWAYxUi3cVDkB3RfHd9rkhM
         aMoh50ArakqTSf+4OCuQ3H7tfU38wXi+SG7+qtyEdrqvzsCyrR9KI6DZe7KbmHvD5Dt4
         /eCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=7fbiT2OwgLplwW4mpQCfNohZIaPgwVPlTSFmkYNWIpA=;
        b=seWhSslRlAUUw3Ln/dCO7jrrdvdE2ODKv33Ai/MtrEeki3zDhFuScJrUHJkh8TeIdx
         nFMpAGacDpZd7sksvAp3+uOVic37z9vlddGzPsfsPKSS6zOs0Csjk7EC0oJNSgsGtCfE
         nY7T1IBM18ThYgZ3cdaVvi2LrINcSZKPpWht2ed5J6Qj6ZTvEYmPqg837XlXghAXncHZ
         tZswIUPNvLskPscMDm580xhnpb46gdMGy+uouKtR7/XM7sNjDiDmgk7Kf1YTJwLFsjfc
         WukGhNMSDoSwBcERVnZFuy3Ret/tw7vr0aHAxoOtViV6GIiZDygNelC7bC5/h76j+ybT
         tcqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mNYCcxQ0;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7fbiT2OwgLplwW4mpQCfNohZIaPgwVPlTSFmkYNWIpA=;
        b=BMgGou7OTrQgYPWSmKh4c2vtkiSHbfpbr7CxrUFHi/bbe6gK/tzLMoMZZS8I4OZwQW
         mS+Sv6FIl1LXq4rVSgKlncvrrMzUrYtR4cVa2sgKYz96ud58E+OSTU2a7w6tL4gwla2X
         ADwZhBT0bkpsoqRr1uj4bVEK08TbQEchsR5ZnV3cxCILleg5GgHW3HS/y1V4gcwBa7Zl
         6h6gi06aSIFllq2pRvF9T+higwLTk+suoNgwUhyoFyhnQjD9HePwy2nPrH2NlQewnvAz
         2QuF5UW0/g3QMvqIdx4lp7geQy5uxFb5JsMHFpFREqEH0vsyOSWIlaQd8AB9VYaJnZiD
         ll3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7fbiT2OwgLplwW4mpQCfNohZIaPgwVPlTSFmkYNWIpA=;
        b=Lk3wDFe6B7k1A3ueO1vQxyW8tL+MuyavR2WdvuOb9mqGZ7ElbJ96Gm7xatW+iE7NDa
         4TQxs3v2l5mAKOiWrL/tEVuz53gpXJ8Nvm7desNJ/nTD3LR6nC5xxhmQvolFmt8lGwrD
         P1hbn/DiCgVdOf0xE9eG5p8eZXb5LblPE9Y42npq68WvX9n/imd7Z1qVdGJk3aLPC/Hu
         44zdpxQ6ewrRFneBMhMi41JPoXYkgr5CqEkUCFIXVFABcrpdv37X/fjDgCW+gbsPXGSx
         Ouao3ZRwXwx/y6Mpqf3ygj1Z3Yga15eFng/2iPGj19nR4RmsE4l833Qs1u5Ds2xKPuQD
         Rdvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWbe7lP43bRgHRTphNBm+5wrqILXhDOOVw2LTmsbGW1r6vJq/no
	C77osJzjjj7ajB9wuUkyvTQ=
X-Google-Smtp-Source: APXvYqxOVE3LQ1dfnf2stplHxiWXLUJeU5zx8cOfaerQ5l2sb5NzNXCmqkM57L5X7RXL/WSggWXOaQ==
X-Received: by 2002:a81:4b42:: with SMTP id y63mr3218655ywa.502.1581696354348;
        Fri, 14 Feb 2020 08:05:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:69c1:: with SMTP id e184ls524949ybc.1.gmail; Fri, 14 Feb
 2020 08:05:53 -0800 (PST)
X-Received: by 2002:a25:c693:: with SMTP id k141mr3566458ybf.252.1581696353792;
        Fri, 14 Feb 2020 08:05:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581696353; cv=none;
        d=google.com; s=arc-20160816;
        b=OWipKZoZ21lK7FO6UGnuqlEATdToV4DZLaBnRHxqNJnswheQQDzGbx/sbUe8ghEHN0
         kuGSAw3T7b/T2KYsl49OH68i3XbVEsSVlQlOLMyOC5ZZS6mR68C1bQ0gnAZkpCgsPWFk
         q4xNBpyv4zgkISJLPZ/yi0hqq99pUX1Uu5mmkxXfc9yGVDV0dcUOrs3azrn9uS/Wr9gY
         u20y4ID70L+UQp6llEQZBHPu6JJnS3Ab7o3z9yBFbcELh0m5pMgz+bsR17RaVghzf6db
         nQadzZj3WGjjAT+SRup4ssDXi+OmmoVGeujbb9gxUXdDSqkrF+9li+/tlW7xSGdjFf1W
         xkVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=J4DLDqWNG/KUip6CXwP8DUGuOB1PvftfI46EX/7EVYM=;
        b=A5G3qf4Kkt14sp7WiqJZZUGMJYNpdGv2VD8N2RG88d20GzeLAf2KBxS874UAaGUeDB
         +uU62neUQQ4RzINSYkQGo4lxdmTPMajBNpGIlf2Tpnjm4kRH0HTNP+bzxRSa4JOTTIQ2
         VEcUQXOpQ1HBybfZ5tK62koX4SjAltyTcpagzn07Q9ZCPutxukYVT2MjTrY0RqPdKkbj
         ih+LHKHsPL+LoJrBAw41INFuXfyUOVDlXN2pAu61mOSTGt2s2WhMkWkV2BcPYR6DmQU9
         t9bVMluhfwdy1mCfT/IWqqzzQJikK48ZXcAYqjJq9DUByDxgsMqDxpp2ke1n4nTepyZ1
         Uw8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mNYCcxQ0;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l1si301642ybt.2.2020.02.14.08.05.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:05:53 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0FF122082F;
	Fri, 14 Feb 2020 16:05:51 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 186/459] samples/bpf: Set -fno-stack-protector when building BPF programs
Date: Fri, 14 Feb 2020 10:57:16 -0500
Message-Id: <20200214160149.11681-186-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=mNYCcxQ0;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>

[ Upstream commit 450278977acbf494a20367c22fbb38729772d1fc ]

It seems Clang can in some cases turn on stack protection by default, which
doesn't work with BPF. This was reported once before[0], but it seems the
flag to explicitly turn off the stack protector wasn't added to the
Makefile, so do that now.

The symptom of this is compile errors like the following:

error: <unknown>:0:0: in function bpf_prog1 i32 (%struct.__sk_buff*): A cal=
l to built-in function '__stack_chk_fail' is not supported.

[0] https://www.spinics.net/lists/netdev/msg556400.html

Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
Signed-off-by: Alexei Starovoitov <ast@kernel.org>
Link: https://lore.kernel.org/bpf/20191216103819.359535-1-toke@redhat.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 samples/bpf/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index e7ad48c605e0f..6d1df7117e117 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -219,6 +219,7 @@ BTF_LLVM_PROBE :=3D $(shell echo "int main() { return 0=
; }" | \
 			  readelf -S ./llvm_btf_verify.o | grep BTF; \
 			  /bin/rm -f ./llvm_btf_verify.o)
=20
+BPF_EXTRA_CFLAGS +=3D -fno-stack-protector
 ifneq ($(BTF_LLVM_PROBE),)
 	EXTRA_CFLAGS +=3D -g
 else
--=20
2.20.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200214160149.11681-186-sashal%40kernel.org.
