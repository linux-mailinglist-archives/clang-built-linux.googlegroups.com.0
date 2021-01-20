Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYFCUKAAMGQEE5DJZBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BED2FDABC
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 21:24:01 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id k26sf36666376ios.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 12:24:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611174240; cv=pass;
        d=google.com; s=arc-20160816;
        b=aLxx52fa3L88Hwt52mxgGSLOc9GOgUSEOE0s/lrAApT9IwukKmgbPigZHZc/YWNMkD
         seqKrjH7hcezVf51e6dewGlugsOnq9HTjIiSnaEiWkM+UcvBqtF5LkrWjhz/BfpKh1Fp
         38EqXyiBXTKZM6NfoPJeQWg5KN7EVAAbFjgIySlG+2DQUBJlgjqJhWX3HMJqsrkesVae
         PpskzvkaJmjlSfRvahyT3heZHR7nIg28iXyNQ/cq+1AoUM8epzuHSQcpeR7X4OaG/p3g
         Zcvnvg6z7Mpej+I3YPruc9xo1OK8zWzr8Dp3o8Qt4VPKi0raDrDZm+1M51p/yooo2+iQ
         GS/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=tIHDjqXk8quOqX3OWtVxybyi8HxpKO4rUlrRTysND20=;
        b=DktT8prwOuLHP4ablxiykI03TebD+9Rshoz4SfCv3j3mZHhzBPUb7gRZBeHcCzoZqR
         pwUTPMEHSJSotMLIG/h78Tj5Nc8c4gS2PqI2xzVX7EZYxq0BSSJ1Wkw1zjH3d5Be9oIn
         RpESgNtzsMdkwOQDUQDxtNjZ1vNnuYmfPjg8pux5vuXE+tsZ+2p1BkfIcBsjYcRZmAIS
         G1zcW+OBRuPJaCM7kZL2QV/Ntx0Udee4e7flUpE2UEjC6AaQDjhLp+KuF1A2zjTka6ob
         wArQuFEGqZMnr07wzAJbPkfjrRoFZcS1SCDUAYDk8yzd0hqTZ2zpxOhwuVETGzqCnG8Q
         FsUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OGvdE7Qi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=tIHDjqXk8quOqX3OWtVxybyi8HxpKO4rUlrRTysND20=;
        b=M7LqDehrxtM38YOh6xDIw3gyx4SH6g9DpgBWqx9PAc22Gpj3oPa+uh6V7rfd0kXJaU
         Qgb/EnhENOk20agNk5xExyOgUzWML8F4+fY11Rf3DrzvU+kd9BDAQnft5ONfmU8zCXTQ
         jNleZvsai0UzExVO+sSw1dogvetHP0xUfh96NFsoY5nzIt5CwJiFzGlk6Nops04RPWmr
         Qksd/D247Jhz5t3npnzptD1q2eV1yyJQIaRYWdScx+Re9Sy1JjWX3IyZylPpOzV2opLg
         JfgPGM2akOKFMyQfgNppiE15b+xiHrP24wnb/eK4RraTa67ViJBdm4VUQvN3mCWUXdGO
         VO2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tIHDjqXk8quOqX3OWtVxybyi8HxpKO4rUlrRTysND20=;
        b=IZQ7kVYzoIu0z2QoIbyBIrb4w6kHPXSxGc0lRWd3I7xAPMDJL8j9uuI0aVxneH3ThJ
         UTA6lRbhPYaT4MbNury9gE//uC1s7A1HqD5c3vucZdTRfZ9scW1udJtSmFr8S6mgnSsZ
         YquvWTIV7RiZ435nPp521StaRlBdUFMkjy6zJ5yurOWLdGyZa+15B6WQA2W6TAgdS6eU
         jpknlZ4ByT+43rfhsaRlSvW04KqHQ+u0RpB6T7z34vay04j+87CjXfnGiDk/jVSyz2M7
         LnsFuc/o9t9mgf5TwBeigIR5DQMogFxP89oiaucZtFTrxEgFcJYHGFUA0ojshLME/dmV
         NZIA==
X-Gm-Message-State: AOAM5323KLcD6hI/ziBC4KI6Pn1hpg+phCNCxXxoERK3yDHTOcIrDnGM
	H0jtuU2sxT3uZytfXsDEILA=
X-Google-Smtp-Source: ABdhPJwWrx88YwxQAybDoBxpBsw1xtuDRa8DGnNgHjaPiFfohq5TzowPDkweVPU9HvUIdImAEDzL7g==
X-Received: by 2002:a05:6e02:13ea:: with SMTP id w10mr9582871ilj.68.1611174240611;
        Wed, 20 Jan 2021 12:24:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:13c4:: with SMTP id v4ls1581ilj.1.gmail; Wed, 20
 Jan 2021 12:24:00 -0800 (PST)
X-Received: by 2002:a92:c265:: with SMTP id h5mr7966972ild.225.1611174240152;
        Wed, 20 Jan 2021 12:24:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611174240; cv=none;
        d=google.com; s=arc-20160816;
        b=iTgoNepgMk+wJvJVyApLwKs1qZz5WeFbqWk6mXS4aA2+J3XZ3E9mPF3hupjR4MCIqu
         hLkJLWTp5/UoXthB8rz41RrujANGegsPC9Gw337kPU+EVMDsgBfYxTIaYuPTecPMqOLv
         ymwXv4scqLA5FhNIwyyR7+gfGizhfritfQCI0SDPaWxG/KWbtKbpuLB3Gikw7XQP2zAz
         7sFOeLhHASGPNhmUkKnHQm/OKyXvSb8kwqx1E2tjA+BQ1+Sl9pcb8bfFvVYAguW4vQd/
         CGUT8/3SmulFRedCSbIug/vAciWh7opm6KqhzcD8PES9LStRPNaLOF7zBf8t+UqpaSOy
         ANkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=QRYvOKi0bspwTt21PwFK9tKry70NlXALtq72SsTPtmw=;
        b=gF+Z9VGFq4boa+hzbCeyoFGraHwougUoaG075w9UvZNN7W6ko9Q9TmWNPrpNvXXoIJ
         n/foTAR31e273qy8j69VxnDywMa1zZ78/TfCkRp3JdU38IeL3EViKfzJ2x2g5y49sgxe
         b0sYgkgXyjr2zaZ/AIjCd4ZU1nLTKAY9AmxMy8uOCNeWqTHBWI2XtEhSTko+HS/l9zXx
         JJ9qdkpLlNmXvVW50a9sJG0oRvXn0VY5vHLEWU996++Tmm75RCdcHG1Gk0/nSFePjCcA
         chn6iXc8pNwkv5BJHvplPThJ6GwHtadZOFKQE8HGJbXSlAaOxjEtoJFL0IHqbRaJvYNw
         lK5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OGvdE7Qi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id l6si388581ilj.4.2021.01.20.12.24.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 12:24:00 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id p15so2897570pjv.3
        for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 12:24:00 -0800 (PST)
X-Received: by 2002:a17:90a:31c3:: with SMTP id j3mr7423722pjf.25.1611174239613;
 Wed, 20 Jan 2021 12:23:59 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 20 Jan 2021 12:23:49 -0800
Message-ID: <CAKwvOdk_U6SEwOC-ykaVTMu1ZmEjWC8cCiTetvU2k2dQ6WPCoQ@mail.gmail.com>
Subject: 44623b2818f4 to 4.19
To: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>
Cc: "# 3.4.x" <stable@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@arndb.de>, 
	Herbert Xu <herbert@gondor.apana.org.au>, Nathan Chancellor <natechancellor@gmail.com>, 
	Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OGvdE7Qi;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Dear stable kernel maintainers,
Please consider cherry-picking
commit 44623b2818f4 ("arch/x86/crypto/crc32c-pcl-intel-asm_64.S")
to stable-4.19.y.  This will allow us to use LLVM_IAS=1 for Android on
x86_64 allmodconfig.  The commit first landed in 5.8.  It has already
landed in 5.4.74 as f73328c3192e.

The backport to 5.4.74 (f73328c3192e) will apply cleanly.  Jian Cai
sent it to 5.4 for CrOS, but we're trying to be a bit more aggressive
in Android supporting 4.19+ with LLVM_IAS=1.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk_U6SEwOC-ykaVTMu1ZmEjWC8cCiTetvU2k2dQ6WPCoQ%40mail.gmail.com.
