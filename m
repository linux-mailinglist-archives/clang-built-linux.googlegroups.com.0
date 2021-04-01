Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBCULTGBQMGQE6ZPQ2SI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD7A35226B
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 00:13:31 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id u23sf4950118ioc.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 15:13:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617315210; cv=pass;
        d=google.com; s=arc-20160816;
        b=vRC1BRIKQqhKbubw170hrI/ieJaCkb8Xgsd3Pi1KByvcmiM/JMXaAaOxXI4CUtumh4
         1OjUu0VMVDwH7wYPgQNaakbDBqEl5J6ixpZUF94nZySoNtVZwSZGPMzgd+kZcHTsqalT
         bPYrB5gtEYZL8A6aeWwQ8UseqUAVb5PL5WkfJdC5p8Y749Vco+WAgRhajOC3iJpUI3S8
         KufhMG4fQrThQbajI+qgEmhHwapUpBakkORtpS8JrZNP+4txm6RD2+m6ly7imaahkNAD
         8u9IMwpuAQ5Ic4moFXjS4QJ25+XrfqXlfzOJgzKM5jAcJgEihEn5Qvoyz8oahj2SjaJC
         wsbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=dh2iMIigpniXIHQVtzMm9NYWVT3TEb7cBNapqIdOJCI=;
        b=TV/FSlVSHXLb6xGAb0J+R9WBi4LwGiS4rOAd7t81OxLDiH7/DZOv8v70odTHSrDtVI
         4EsO/2botetz1U6DRNcGKmxzTnG6NowdafVmbKLfz1+VCmsf1gMmoGzBUt9QNKmrRaMr
         X5eM4nGfh7HeuiTeAOa3BEbIA1Ktn1XBL7D0yNWH6rxZD6yLoSYoHuEgJZ6B79tMTUVj
         +CycfvU4cVRFqwRlj7xC4ESzihG0jhe19Zm6JntyaUPoAgOntZ4nkcs5T/3q62ikrClB
         TdUe+FxeO5msU149Hi7Aw+R8cG4U0YzIwmBhytkiVlArZGve9dkvBHIrbwAtNQbCMbL0
         Gifg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cQExDcxo;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dh2iMIigpniXIHQVtzMm9NYWVT3TEb7cBNapqIdOJCI=;
        b=MXVCVxpefo3z5UNFCbkI31zO3d1JIQqhZk8jGSoZkYk29Alk/apAdt1JG2nDmbqnfz
         xiVUnK7RFhfZT8HFYnGNJX/UYGZK7U+xRMN05EMXOQD0VUEigxKLmXP+ku7aSRbxkYMn
         VJ6ySQacP0fPGWYxkPEziJlQXWlICMbI7PhzLv+q3vl/G5UuMtsd5U4nJh1o8cxQz416
         D/bvhIn36ISwtdCOcDXEGG8D0IZUhHYkjhv9FRBc9cddNOqoAshOTgdydORtOx9g8Oas
         Muc/Tc1Np0Ix8V8kA5fDDTxLolP3fQM8mR3pdtok3KCe5ypnvxBHcZ9CljQ/l+fm0S8o
         HN9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dh2iMIigpniXIHQVtzMm9NYWVT3TEb7cBNapqIdOJCI=;
        b=R02Z0f4odt+ldJqZ8brLbT3HTt9Xbt2itXHMGCfsJfQUarcVkZPJjqyUaG79i9zdNe
         KOWL1WfF8luHv82fy3QI3D4j7cy1tNi+d50fwKj8vuy5R95/Mmu+QLUCT6/8jxIv3vdo
         DburAxCfA3tPJl6MXyOyXbDIFK+ZRlg3sR+KvWUS9v8LOGsw+it8DrnsuXQYpAaCWsJa
         h5D5NkSnq2q01KvHOpE/VZ8yMXrQEIW/Ov+kkpUxVylDeMdXjlYAB+FBRnPvrBsHQiyb
         iQxzEYMgbCFhUWV+43XGFqXEIWUOpATpvHgt9U51IsTdRXtMwmQxW+lkysz2f/QRuWwf
         CUbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XaiGnukhCe2XMufuDJb1DcDeVVX10mQxBtQla//eNNfQAs0OJ
	zfTbEZ+kuZDfYxrd9kBx+ow=
X-Google-Smtp-Source: ABdhPJyzqxQevGeaanzO1WyBqll/DZ2hoAyMTn7VSXkZDlyZpdkKrSC59qGFUDCuE/tVH2P7v7MlrA==
X-Received: by 2002:a92:d311:: with SMTP id x17mr8067437ila.226.1617315210535;
        Thu, 01 Apr 2021 15:13:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:271f:: with SMTP id m31ls958999jav.2.gmail; Thu, 01
 Apr 2021 15:13:30 -0700 (PDT)
X-Received: by 2002:a05:6638:635:: with SMTP id h21mr9634186jar.97.1617315210140;
        Thu, 01 Apr 2021 15:13:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617315210; cv=none;
        d=google.com; s=arc-20160816;
        b=MTnZRnQPeeQ1AvFIIgSEZNxu0UnVs0GOzC9Pi/gRn1SVk+4Vcd/NkAYZTPCuv9omLL
         heZWMjmCKB0ScrVwZ/5eRAPfJtCS6VYa9Mdd+ojjrWP+uvh4QGCoUZQ/Z2d0nLP/4+Ov
         NTkTCFZL4GLt6PQtAyyCOkcJ8+/nWNxouAIcYfwD72k4mtFwCboFxdNE8fQwW/ToQfNP
         iaNaElG4wY7SmOlRX5A0dt4kaqX29jYPBCXSMpHf+eZ3pvW5WxuasMirZhcj+vKBbRzE
         ugYHWzlDf3dh6eoxVE4Oqx7TVJb1G3M+bzJRxxL3okPnyHBTYsE3IU23cywA1o8Mx18B
         jexw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=qOIPmpuTpYu/DgWdR2yqBo3+vizrBGynByA8gUlCbew=;
        b=tJ5MfdAP78hbwt/rH8F20Oq8f24wZoSg1BWUqAy4qrTFUeYcqRXKvuoakMm0vAUy9k
         7hkxm+/fV+V/WhdJzkQjQ6MP5lqmOceuHnspVydST06FeQNGLq+kNHDl0BCN0EbXWPwl
         LGEmtJS+YHrrYj5tYcI0gKSp4m1pN3JWVTdJPdNTJuCLX6Z4rwxfDUbFFfwQEoOYhsrd
         1BIvVbCf0Egl0Z9xRr0EWa2065mqqW2BVvcAa3X2McqHQUvf04EMKEiKi4J5EXT7loQd
         mHOT4eLwA/HazLZRjNkORAUHuo9cj0bTM5z0XGPw0hg+CAfbHMXCNloulTk53fEe02+X
         dc5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cQExDcxo;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id i2si436491iov.2.2021.04.01.15.13.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 15:13:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Received: by mail-pg1-x534.google.com with SMTP id f10so2436895pgl.9
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 15:13:30 -0700 (PDT)
X-Received: by 2002:a65:41c7:: with SMTP id b7mr9147045pgq.237.1617315209553;
        Thu, 01 Apr 2021 15:13:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b140sm6508328pfb.98.2021.04.01.15.13.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 15:13:28 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Christoph Hellwig <hch@lst.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Tejun Heo <tj@kernel.org>,
	Alexander Viro <viro@zeniv.linux.org.uk>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Shuah Khan <shuah@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Kefeng Wang <wangkefeng.wang@huawei.com>,
	"Matthew Wilcox (Oracle)" <willy@infradead.org>,
	linux-kernel@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Michal Hocko <mhocko@suse.com>,
	Alexey Dobriyan <adobriyan@gmail.com>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Adam Nichols <adam@grimm-co.com>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v4 0/3] sysfs: Unconditionally use vmalloc for buffer
Date: Thu,  1 Apr 2021 15:13:17 -0700
Message-Id: <20210401221320.2717732-1-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=cQExDcxo;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::534
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

This series improves the defensive posture of sysfs's use of seq_file
to gain the vmap guard pages at the end of vmalloc buffers to stop a
class of recurring flaw[1]. The long-term goal is to switch sysfs from
a buffer to using seq_file directly, but this will take time to refactor.

Included is also a Clang fix for NULL arithmetic and an LKDTM test to
validate vmalloc guard pages.

v4:
- fix NULL arithmetic (Arnd)
- add lkdtm test
- reword commit message
v3: https://lore.kernel.org/lkml/20210401022145.2019422-1-keescook@chromium.org/
v2: https://lore.kernel.org/lkml/20210315174851.622228-1-keescook@chromium.org/
v1: https://lore.kernel.org/lkml/20210312205558.2947488-1-keescook@chromium.org/

Thanks!

-Kees

Arnd Bergmann (1):
  seq_file: Fix clang warning for NULL pointer arithmetic

Kees Cook (2):
  lkdtm/heap: Add vmalloc linear overflow test
  sysfs: Unconditionally use vmalloc for buffer

 drivers/misc/lkdtm/core.c               |  3 ++-
 drivers/misc/lkdtm/heap.c               | 21 +++++++++++++++++-
 drivers/misc/lkdtm/lkdtm.h              |  3 ++-
 fs/kernfs/file.c                        |  9 +++++---
 fs/seq_file.c                           |  5 ++++-
 fs/sysfs/file.c                         | 29 +++++++++++++++++++++++++
 include/linux/seq_file.h                |  6 +++++
 tools/testing/selftests/lkdtm/tests.txt |  3 ++-
 8 files changed, 71 insertions(+), 8 deletions(-)

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401221320.2717732-1-keescook%40chromium.org.
