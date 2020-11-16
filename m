Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBBETZH6QKGQEVO2AUVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63d.google.com (mail-ej1-x63d.google.com [IPv6:2a00:1450:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E10D2B4001
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 10:42:29 +0100 (CET)
Received: by mail-ej1-x63d.google.com with SMTP id gx12sf7370519ejb.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 01:42:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605519749; cv=pass;
        d=google.com; s=arc-20160816;
        b=ffcyLBHJ/xpcuOVrUE5kyKLEXd3ysh9q3ibXnYrpyVOYy5305ZRsezxafWonB6OKnz
         ACZYY47v8L7K3vyEBAHcJdGOGspczdmaIoOlsfq422hV7okg3vFelWVMf4s/5Wx8/mDr
         +Cy46DfsRCVhikhUI0bjNXFGTQQNA6vnJ/uwUYWxGDSFK1pmv7x1Rex5vLYfSpvECTOK
         3fhRdy1Gzgz1AeIy1uT+FdMblh6NG7dlINPdWxZXCB7MZMXbNKJ++rvL8ir/Jf1LQ9w1
         Tiov+Jvf85gtsCE608QjmSzQs1Fcr5fsjlBo7IrGeD29fOvr2MkU6024HqZmIwsVLjPF
         EXmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=VnDVVWHphIDcO7hdhNm+HbpkRMxeDLYoMKt31fUOcLc=;
        b=j7jwXLkN/AZ7BjwNLWfwf0Bfa63E3uqfgZNwS1EbNwK0YzhYHwihRvC7rbFqNOVkhj
         8tc34Hqy5yxTVQlsL6A+nKHyBBVeEuqwygt890Gjr3KSMBk50ONfAbLOacPmnThT7upV
         lJAwxlsr4+vqrzxL0b96cJ1tdAz3kkyoo0b4QTSH/W6SqNM0hLhZUqJJonZimyi0hLNu
         32WYYklqu4h8D1nfV9X28c75MAqS9FvFRUTE9/hqlFTvs4KpPUgoyxhAexjEbaXFziaG
         c4szCXZ22gpbiITz6LSyKtKi5n33/x3Fjzdxtd8uq2FuBm07zO9cfrV2PkUOXrzR5BpE
         C6Mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L03qTeva;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VnDVVWHphIDcO7hdhNm+HbpkRMxeDLYoMKt31fUOcLc=;
        b=T7NaAguQeEJ9k4FMnvKLyWx9lkhS0OzfenTqAy2w3+XJmFsVQVWgxr9dyWotFiGkL7
         gHAFAEzeC7pGJbAsU4VjPi2huUakjhMsQVsy+PBojUQPdHHrCzY6n82EBJNJ1f/QroZM
         Inbd9oozfe+Qh+/1F/LvL4rGIFkSvVX9UjLLZwZzXM+h8tgVmW7TIEWYDIcJWo0mejCG
         4nh4Ln3n0ew4RVHs2Jj+4oJ60eyh8JmuKco/crIb2kZs2mWAv+8VtS8fgj5hn4JBISMv
         TorJb0ELcSFlGd1xKufkun6xqenTaooinTRwRl0S28OD62hvjet4SwmGaR3Mcui90YpI
         Ve1A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VnDVVWHphIDcO7hdhNm+HbpkRMxeDLYoMKt31fUOcLc=;
        b=KfmWcEAxR97DP63IcT1XyAVMdCkS/FpsOniuNBtOcZ5ftlBalR8h/Nt3YLcHHsOkUn
         bRE+IJTMOsqYP21WpHInBILJL9zXiJdOZDfQ10CdtPVR19I89kci7yUJOxNNfC0LjFUz
         yoZhbekfb8dHEKB1Jh9C7XNNddwWMc7oUd9ebwFVFlQeOzz7UR6MyLkpmFb8SxouNGQN
         I/3T1f101KC78ADK6j5nZdUTgGZ81xmSOdOLSwN03nKzibcOoY+OxVKLB87GjXXMp5FD
         ArRqI0fCb8O0j2VBEmzRZ00el9BI/i4sgrEnGtDXrV8zakEFnJ/1vyfnVSg/BzME/lIx
         5LLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VnDVVWHphIDcO7hdhNm+HbpkRMxeDLYoMKt31fUOcLc=;
        b=m0/tdfHDK6XD7MjKtInb2N5rCvhMFj7XfuG3mB9g3lqj92Sigt0+x54eSKo5MqdmOS
         KAOmrxMy6++HXEFiR1aXcnVqc6b+765C9DhJvvGdCNQ+1XpfEoS0Gq9I2bUuGFi5F3KK
         FP5MCY+Oro6Igwz7Er6u3J5UerXQOV8gn85HXzZXvnHpMXz1sHfGFawDRorOJ5I2MFUk
         bWNZXOqAW+04qDGThHoVBdE9GvSttRJb1gF05IHlczjHtVTZFGKG/w/2PS5YbMLr01Zv
         SjfCtW90g4jQ+zk+aNX+J9re576z1WKw41l5v7S1rqdDYARjHGq88GKE0qzSiC+ZMmka
         +v9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530BzZ0vhGaOnQoF3uIrF1yd+vpkh/lc9T2QJThkA4utehySmSF1
	v/wBIqDxXV+/SxFUo1RHbVw=
X-Google-Smtp-Source: ABdhPJwaAwf2D6L2j4VU4/hdURpnik8Dt3ww+A4F4ScP1k+KadiC6uDlaAOV26qZmkj2Ivb4W1HYyQ==
X-Received: by 2002:a17:906:26c6:: with SMTP id u6mr14220528ejc.349.1605519748965;
        Mon, 16 Nov 2020 01:42:28 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d4c3:: with SMTP id t3ls6182996edr.0.gmail; Mon, 16 Nov
 2020 01:42:28 -0800 (PST)
X-Received: by 2002:a50:bb26:: with SMTP id y35mr2835562ede.257.1605519747982;
        Mon, 16 Nov 2020 01:42:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605519747; cv=none;
        d=google.com; s=arc-20160816;
        b=HNa8oxgP7+Xpebqfj5s8T9FiS5fSz4kbxLYsgs7OsIBwIw4RxW6SrHHZ9sRvGAk/Nz
         FbqvG0c5oerqygllCX8aSpdWL/lTZto+ktPiEsSrvILUKYCJSGamGq786z+P4dsnjdHF
         SI0bJVIrgnkLLZuJq1RW/4DTzRBwWCQky6UgoJd+Q0fiQP/E2V1r1M8dlbsu1FDs2etI
         WyZNFXejHJyra8vaBwjUkKqfvO82Ol4VpB98wnMtHYrH4a3uWEfgl8VvoklQvbdN0h/F
         rmBfCjRdLfUFO2jApDkYRTCy0z2UkXC75AWQ+mQ2F1QrwAzA/n0xllkrCSPQVjHEY4iW
         FgkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=kKG1HRiuJd2eHUG0i5gcYG0tFSdbRsxnGh+YMhzlOSs=;
        b=LIqXT03iBJlgQfRKoYwu6MZ5u2cy+q2xFIMyBRhkd0xYtQVGAI6tCez2lPn9DPSC7s
         phlvQK8qYeebGXihItGi/YUgcbAzgCHXL2XaItgbJC4qKXWipdx0rJvn5bWo1uglEUg3
         PQyQpjgcKaK0rJJXwAQYq5WS/mMZZC7BTgF2iF9P92N0pOs662dSWctAiDVUSI2Jpltu
         61tC+5ROfihiRFUhE0R7I1wCGJxd4rPS3DA0RBbGyyBgNyPfEQvJBGvEujAtuNu1EOJT
         EeuQxImrm7ullXp+k/Gua/2wr5LWYywcolLZE1QfWHQEoa1imSJG4ATS4WMSf3O5180w
         t/SQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L03qTeva;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id l11si488856edi.3.2020.11.16.01.42.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 01:42:27 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id d142so23087341wmd.4
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 01:42:27 -0800 (PST)
X-Received: by 2002:a7b:c0c2:: with SMTP id s2mr10943085wmh.78.1605519747654;
        Mon, 16 Nov 2020 01:42:27 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2de6:ad00:939:47a9:70b9:fe5b])
        by smtp.gmail.com with ESMTPSA id m3sm17917169wrv.6.2020.11.16.01.42.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 01:42:26 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org
Cc: "H . Peter Anvin" <hpa@zytor.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] x86/cpu: remove needless definition for !CONFIG_X86_32
Date: Mon, 16 Nov 2020 10:42:18 +0100
Message-Id: <20201116094218.10508-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=L03qTeva;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::342
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

The function flag_is_changeable_p() is used in:

  - have_cpuid_p() for its CONFIG_X86_32 definition
  - identify_cpu_without_cpuid() within its CONFIG_X86_32 ifdef-block

So, there is no need to define flag_is_changeable_p() if !CONFIG_X86_32.
Simply remove this needless definition.

This was discovered with make CC=clang W=1:

  arch/x86/kernel/cpu/common.c:283:19:
    warning: unused function 'flag_is_changeable_p' [-Wunused-function]

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on current master and next-20201116

Thomas, Boris, please pick this minor non-urgent patch.

 arch/x86/kernel/cpu/common.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/x86/kernel/cpu/common.c b/arch/x86/kernel/cpu/common.c
index 35ad8480c464..b89dbc7ccb0c 100644
--- a/arch/x86/kernel/cpu/common.c
+++ b/arch/x86/kernel/cpu/common.c
@@ -280,10 +280,6 @@ static int __init x86_serial_nr_setup(char *s)
 }
 __setup("serialnumber", x86_serial_nr_setup);
 #else
-static inline int flag_is_changeable_p(u32 flag)
-{
-	return 1;
-}
 static inline void squash_the_stupid_serial_number(struct cpuinfo_x86 *c)
 {
 }
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201116094218.10508-1-lukas.bulwahn%40gmail.com.
