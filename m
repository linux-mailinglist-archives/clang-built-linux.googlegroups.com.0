Return-Path: <clang-built-linux+bncBCS7XUWOUULBBC6KYDZQKGQEMEZCMKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFE218775F
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 02:17:00 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id w1sf16930932qte.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 18:17:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584407819; cv=pass;
        d=google.com; s=arc-20160816;
        b=BXNwyipif0LP5hu9BOxOpZFnebYNzZvNT2DmSwRiJR1ZYMJCMXjRgyrTFnDhCWISVU
         YJAU33wr4NHAb+RyBo/CYsbqg/T2noo2a1h2z0WVAXqvvh5Qqq8KSZv3l7jutMpOyuyz
         c3qgHfZ8GHp6XNw3fnEi2hCPfJ1krrxegcB9N/EZhkjJDGpZxXOqr2Z2edBNZIt5C/XD
         NRlLAJbYhbpMfcF4lnRbEzCiYz4cBNonsbtmBzwVXKKcSJTP1To2m+OhgdgEx+qzRnP2
         HmecDf8R4ag2foiliydXwh9SVZ+uEnTBcxhb/10pDYxSG/2xvJ1JLexlOW6oHKIBTgvd
         e57g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:dkim-signature;
        bh=6DXVOh0ajHmu4qiNl5XBAU4kmdKzS660d1A0T0RGR0U=;
        b=hdF2zC/WBP28hO1azNqgFZ2Yvj3UHGVKQ68UidyVzcDEd/16dFm1PpaZ5e6VhIgnuy
         jsXNruKUZRDTcUWYNO90fqRLa4aX1E2N6vPoKHHUEvKRqvqgwLSAMQ0HylB+8f0ULb15
         QGXUNysEwO5wElXsa2LG/ccp7myiV2W+ZB/vaO7pDjuYamHBBY1BX9y0jOgpqntPTckW
         eVoPJ7dNneGAJm18VeyWxkeSTuV6eb3dzEauri2S4ZRNQHJGe7iR42x7nOh2FsEr/DE6
         hL5PFKoVjaUs/oWLLjB7JzOF7hpWCRMfKkgiq1Dd0E/6GpbgLAixSV2uZ1WnD8dgwq9X
         XfTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qF4LpAOH;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6DXVOh0ajHmu4qiNl5XBAU4kmdKzS660d1A0T0RGR0U=;
        b=Z5g2llcDMKiOa8U4sWa1rR+PLSAnTZibw3wUExGdG5J14sVPJ/zERGIhXnNGl+5TMp
         PXCcRsUouOGYDY5mnk69ANrORQ9fXKMsIpOq5SwSUQpWpE0PyHkhpS/aqms+fh7UEkyG
         jPuJzVQm8mxEoRGdZ8X6GP3wQMpEIUYalPy1n/ZarO34HI4jssF7puZNp3z46H/KLoNc
         /QsA/a3UHtgxAIp2Fw/9dopfuJsjuTkP5jOTARuFV/WaPOmMyWAZQ1dHj4MyPkUQZUfS
         L9/qA1ORZyzcZN7JEIZKtiugMXJ9/kkk/RWzwcqr2qOk8RjnHvbU68rzm0as82PCTgVV
         QmLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6DXVOh0ajHmu4qiNl5XBAU4kmdKzS660d1A0T0RGR0U=;
        b=Ww9HRbdic4eksYghdZP5csoy/kZfC251UKahxcUBsEttVYDmYoSaKTGtfk8vGxykGh
         0xWOaidAKn2p914/2Ys97mdlirGiwPTHxuSHk2oPTnmkt1mI3WOW5HFcMkfH8r7+p05S
         0Y689u2W4LvBGdQ/MJkWTnqpDvjMGrKh5IYQYDHsrqO+Idkf3tJ4YJ5Ss6blvaq4w3GN
         xJLzp8FHSXIFa5xE1tWWsZ/EspR1rDgz3107ueOuiu+F8YKw4pEYNYUt6Z5kcARzftBh
         DCu7OwwIBguwup7IgFTT3qbC9ddNZ4timwWS9N4FzN1DXDJBDEpqsCE0cHK6szGUiYv5
         uKfg==
X-Gm-Message-State: ANhLgQ2cMFzEtdRv2xiSV2B4yFJlaUYkN75NeKZSlJ+CYQ9whwlLF5SJ
	M5kZGLmaQz1q8/SjBNDwiXU=
X-Google-Smtp-Source: ADFU+vtOb92fIfQhtbAujowNSC3bNw6rigvd0Q8n7a8b9mFcuydAMEUek3zSMf+CTeufEegsmN2keA==
X-Received: by 2002:a25:5b8a:: with SMTP id p132mr4175040ybb.11.1584407819264;
        Mon, 16 Mar 2020 18:16:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ab94:: with SMTP id v20ls6990549ybi.0.gmail; Mon, 16 Mar
 2020 18:16:58 -0700 (PDT)
X-Received: by 2002:a25:3187:: with SMTP id x129mr3761469ybx.397.1584407818852;
        Mon, 16 Mar 2020 18:16:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584407818; cv=none;
        d=google.com; s=arc-20160816;
        b=Ye+ihwvjUZKcdtTu9/MnsEkqN5quLpEKdBKe+aqajORe93Oa2fin0g3FcS8pi09Dq3
         QDMoHn5bS9jnTN4aN3VVa5mQretX6HjC28HtJSC9y3h9m+O8FZEzrEEycDhiHipCbjgj
         t7DQ1lzP9VAmW7vHy5BdTbd7bNtczFr9y4lJQqHRSiIRx91mkxKqxxJD8o2xHWgvVskb
         GE9ujG/phKwHMqq0T7xgYp7QITJhM8lUgnGGNb67DZra4JrrP36JaK0jj+PFvRrwezXT
         6X9De1pYSoGp4A1X6/PLuRFnGPqwsV2NEemTjHtYFZHplFrrfVr8y0+P+6y636ATaRet
         9p5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=I6cJtFY7hJqIXMiYqUICiIaIcWOpJ+YQ+ECPyBPa2wE=;
        b=aBaoy9NI5KqYsEtVFyZLNgdX6x94mnReLIJOwOYSmEmaMmQflO5FmmbRJeivb/mX+M
         1xQk+AzTFm0ojTNGeR9VyOCzxuA8R6CAJj3cnokLf9GUsGzYDB3qrBoNb3GFYMZRYVx1
         k2lDkyXdH1XTS/EF7oKEP7MzDjfSheD9gCdr+/UyRpnK3ccoR4rfQxB23jTpVRgD9pF7
         IHEW6BknJ6T2y9grQcKTh1bdIo85h2IrzoDGKsEUjd3c42WCgFpclDIvgTsrNWxK1oww
         XwJgeasqQWHnUXR6jkwVEQlxx91NiG0tbuk+0jxpSy2sNjdtxzeXeQvRB88mJzITweHz
         infw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qF4LpAOH;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id l1si123996ybt.2.2020.03.16.18.16.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 18:16:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id ay11so8848267plb.0
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 18:16:58 -0700 (PDT)
X-Received: by 2002:a17:902:7441:: with SMTP id e1mr1829956plt.291.1584407817721;
        Mon, 16 Mar 2020 18:16:57 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id c11sm1027287pfc.216.2020.03.16.18.16.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2020 18:16:56 -0700 (PDT)
Date: Mon, 16 Mar 2020 18:16:54 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: bpf@vger.kernel.org, netdev@vger.kernel.org
Cc: daniel@iogearbox.net, Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com,
	Stanislav Fomichev <sdf@google.com>, davem@davemloft.net,
	ast@kernel.org
Subject: [PATCH bpf] bpf: Support llvm-objcopy and llvm-objdump for vmlinux
 BTF
Message-ID: <20200317011654.zkx5r7so53skowlc@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qF4LpAOH;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

Simplify gen_btf logic to make it work with llvm-objcopy and
llvm-objdump.  We just need to retain one section .BTF. To do so, we can
use a simple objcopy --only-section=.BTF instead of jumping all the
hoops via an architecture-less binary file.

We use a dd comment to change the e_type field in the ELF header from
ET_EXEC to ET_REL so that .btf.vmlinux.bin.o will be accepted by lld.

Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
Cc: Stanislav Fomichev <sdf@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/871
Signed-off-by: Fangrui Song <maskray@google.com>
---
 scripts/link-vmlinux.sh | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index dd484e92752e..84be8d7c361d 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -120,18 +120,9 @@ gen_btf()
 
 	info "BTF" ${2}
 	vmlinux_link ${1}
-	LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
 
-	# dump .BTF section into raw binary file to link with final vmlinux
-	bin_arch=$(LANG=C ${OBJDUMP} -f ${1} | grep architecture | \
-		cut -d, -f1 | cut -d' ' -f2)
-	bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
-		awk '{print $4}')
-	${OBJCOPY} --change-section-address .BTF=0 \
-		--set-section-flags .BTF=alloc -O binary \
-		--only-section=.BTF ${1} .btf.vmlinux.bin
-	${OBJCOPY} -I binary -O ${bin_format} -B ${bin_arch} \
-		--rename-section .data=.BTF .btf.vmlinux.bin ${2}
+	# Extract .BTF section, change e_type to ET_REL, to link with final vmlinux
+	${OBJCOPY} --only-section=.BTF ${1} ${2} && printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16
 }
 
 # Create ${2} .o file with all symbols from the ${1} object file
-- 
2.25.1.481.gfbce0eb801-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317011654.zkx5r7so53skowlc%40google.com.
