Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBG42YT3QKGQE6KQTS7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id A25922040BB
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 21:57:16 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id 186sf21121878yby.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 12:57:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592855835; cv=pass;
        d=google.com; s=arc-20160816;
        b=J1XD8YfhZnzJdqOVDEOfDZXTvqM2cIKj94JXWzEWkN2puCbTJZrxa+4PFSjpIs08ji
         7CIDxUIK0Sa2O/bdcXw9Cntq4rwdPIvhHZKytDuiJLhWI0RappLeeoZIlo0AiHM8fmkf
         DoAmbJ9YlqkbCSgD8HNc1HYkNc4SBMD8UyjNdmS6CFN+r6Lq1d9KyVneew/HYyViBRXI
         PVX/dF0JSeRRwTRz2+TYP1H18gAO5emJSCjQmfs8r63+digOXPWyX57iZ98NrSalbHwD
         rkclczB8wT1L7n9UszklNspuE2r/xjwUuCNK7Qr5+2Tykx9ho8UzRJ0m3PDfgEEaznqZ
         WUJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=wjmyDPVZdXatziS/QkAY8DtH1o1/6nUWXG0dRpt1aBI=;
        b=0Qsn9Y6gTFR04WetPD986CpagQWOZzjQeMs5nuwRvYEmCy+MK597pVgUjpmtHKoNIf
         i4hDAy7n7vNKPAdurAEqwV1XXn4lW4YSEe9gVAp27yLGgokhHDzxo+lpjH+qt+o1n5d/
         5RaWKWeNNDIdZdO4soW0cI2iSZHFoNE6viKJfmNQFmzjxAO9WyGijspXJtu7xnuwNqEY
         TLgDQpxZWgW18JHxbzcdUUVEntzM3YR2Ys17xxoraUGf7AqW7CS488N2KhhP9tQBJcVJ
         45VWtM9VwXdkLBdDrNZQhCRsO3HXsy1jqyEtSTf6IQHh/8FyOm5H6A3+onkUEg6YR1ed
         JshQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UDNbUG+o;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wjmyDPVZdXatziS/QkAY8DtH1o1/6nUWXG0dRpt1aBI=;
        b=jIS6mubHTIk1CEPnXuhkaODcJyYbdEDCO5zvTtTSZWvb7/+S32GvhTjAlVtAB6SNGZ
         avZeaHFW7U4Uyvi7sMd1AxVBmfDsfoo2iuuW7/KKQn+vsiBwR3WSPoAgAn7ma64J5dLV
         OXkt3KxBFpDHMrj9PPnq0jmEIhUBrT7PbO/zTXszpuZnwFXx6gvtcK/Avf4kHmRvNmpL
         6OgOUqRyrnGXEyuCKN5SN1J4JYF/MJxAqXi4N+0ndVkfOHrwDIr/8WmfTI0xoibR6ieQ
         LiNEgrjq8T+VYwy3b0+/PeuUzL4iIKZZmDEVtwZHOdfPW2TrE4HerlT0z4spHsSyuUUp
         7mRA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wjmyDPVZdXatziS/QkAY8DtH1o1/6nUWXG0dRpt1aBI=;
        b=klRRLVCyfPBXGOnkki1E2bYffYW2pi5OZSnCNzYEQ7MKmUQPVq3iVvZpCl28r85tEa
         OVVdzT1/L4nGOckVV+J6TDkBofTj8GnUhTQsJs4RyJDnDZGgkHcYx4atw/65OFKttYsK
         Cw9ovgamyxmNGu0vVmPgBxY3FJxIbOOe0Vppi3NfIE8KlWLxKBHhRONWl8xLHVxKgAXR
         pHovgiBv2lpTUHY9LVMPGB99xXssb4kzc+FxmmWgRoDIklmIjpCg8MqvaJg2qgUa2D21
         AdfTF7GsuYCdawBEOO6NIbbxxce8Bxb/X+Bz8UG38LrFxLP88FPMS+UKmqTb/6SMYYG9
         Ep/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wjmyDPVZdXatziS/QkAY8DtH1o1/6nUWXG0dRpt1aBI=;
        b=bHwKguXtNGAzUvFJ11/fet2oTDPmeKNwmbIHoirzZ3dGIohOScH6TJTxOmmBB6RIju
         PpX2R0qzdahclTaLzRl5cT3CaVZzYuZASrWEKiwMsc2xSd+QwB4K2N0psgFhyolJ3kSu
         aeEwIgv7ExyImTESTPyEB2oQPL6NV1evWu2Ygq0DW5Ys2YrgnWEN5Gg+QCJNNW5un/J6
         R5lY72wJ6cbH/WPP0zugdOqTjeKG+BEsVNFMcEBlcUn+1ZHLujZVpmQ0fMXC8NGGL4tO
         H0fHHaEqs13dX5fzC49INDzCZsjHOcGNRCOGUqV0/XDUiApiIZcXLWUfllSb+/YUNlmu
         SjCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VC5X5LxuxBW38p3C7458BPZ6w8rhPPNkO87wx14KILQHPac5n
	PLUHE42qY+A2qccq3ne5qKU=
X-Google-Smtp-Source: ABdhPJyT9extj/3ulBlxwoM0knEOgw4gex6PyDBNvCD0H9MbXsrnTMvideXJNExRUCyynf3nXU2MIw==
X-Received: by 2002:a5b:581:: with SMTP id l1mr30939837ybp.478.1592855835656;
        Mon, 22 Jun 2020 12:57:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cb07:: with SMTP id b7ls6916418ybg.1.gmail; Mon, 22 Jun
 2020 12:57:15 -0700 (PDT)
X-Received: by 2002:a25:2447:: with SMTP id k68mr31137425ybk.69.1592855835325;
        Mon, 22 Jun 2020 12:57:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592855835; cv=none;
        d=google.com; s=arc-20160816;
        b=uCs2/NlFW6GZCt53kLjANoGGEqhIRv+lQLwFBA62Ce2I9Bjd97qcezcmfz45J+oQ16
         V2mcpzdMm4pKlsEpJFYVULkLSQi2a60bZQX1xcfuVJ7n5Il2ZH4TplzVaqgzBn27k3aU
         9Os+MvBsAW5fpT8e9u844kFQc0pUnL0rvFx3yGGC1nq5acvSo7P6/UPOtk2FhQlJnrR5
         X8tSMtSMMO4rc3u2v+2/7kMuoloQ4qaTPXYm6a75WjDstOrnENKDxkvjGmCEvyOJ+Wr/
         HbHIL9q0WIvKrE6dI0PnqSRL7bMNlvlm4+MA0UBlEu5WKnIm5eVLz68Hrwteoj8Q26uP
         fydQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=qafrzlyjQqkYVb549WmrCToGRQSD43SzPHaqq1cYeDQ=;
        b=HSB+4qy8HnEaCvuOiqcxqx2868/SgOElYRvQQ1PBiWW7goSp86QE1KZBJX10PYfmGG
         LPQFXsH4mY7axeENlTgNYquW7bjwlMtS1iQDCthfsIqJdUSOSJDDbhmejyhoy941zBxx
         x4iDDJ5yfmrRkqOx2hDsFY7r1g3iDzIvluDZ7nIrW4eRW3Nag1X0Tvo2l6hSwp+Qarbs
         DDhpHZq0kgF7ve+SWOTK0KLlIWlfkp2LgeqNI82Xvcoc57EMSREGl5LlGqRRO04Y6uOA
         pykJq2Fdk7BVu3BaBkHqraFKOL5lECFA4Sfk+twRq5Mcrss3jutac3cE8atqQ24BijJX
         5+aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UDNbUG+o;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id v16si1250802ybe.2.2020.06.22.12.57.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 12:57:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id m2so14150126otr.12
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 12:57:15 -0700 (PDT)
X-Received: by 2002:a9d:6201:: with SMTP id g1mr14741618otj.181.1592855834657;
        Mon, 22 Jun 2020 12:57:14 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::7])
        by smtp.gmail.com with ESMTPSA id p207sm3462673oic.22.2020.06.22.12.57.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 12:57:13 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Cc: stable@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Ingo Molnar <mingo@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 5.4] x86/boot/compressed: Relax sed symbol type regex for LLVM ld.lld
Date: Mon, 22 Jun 2020 19:56:39 +0000
Message-Id: <20200622195639.2670308-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UDNbUG+o;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

From: Ard Biesheuvel <ardb@kernel.org>

commit bc310baf2ba381c648983c7f4748327f17324562 upstream.

The final build stage of the x86 kernel captures some symbol
addresses from the decompressor binary and copies them into zoffset.h.
It uses sed with a regular expression that matches the address, symbol
type and symbol name, and mangles the captured addresses and the names
of symbols of interest into #define directives that are added to
zoffset.h

The symbol type is indicated by a single letter, which we match
strictly: only letters in the set 'ABCDGRSTVW' are matched, even
though the actual symbol type is relevant and therefore ignored.

Commit bc7c9d620 ("efi/libstub/x86: Force 'hidden' visibility for
extern declarations") made a change to the way external symbol
references are classified, resulting in 'startup_32' now being
emitted as a hidden symbol. This prevents the use of GOT entries to
refer to this symbol via its absolute address, which recent toolchains
(including Clang based ones) already avoid by default, making this
change a no-op in the majority of cases.

However, as it turns out, the LLVM linker classifies such hidden
symbols as symbols with static linkage in fully linked ELF binaries,
causing tools such as NM to output a lowercase 't' rather than an upper
case 'T' for the type of such symbols. Since our sed expression only
matches upper case letters for the symbol type, the line describing
startup_32 is disregarded, resulting in a build error like the following

  arch/x86/boot/header.S:568:18: error: symbol 'ZO_startup_32' can not be
                                        undefined in a subtraction expression
  init_size: .long (0x00000000008fd000 - ZO_startup_32 +
                    (((0x0000000001f6361c + ((0x0000000001f6361c >> 8) + 65536)
                     - 0x00000000008c32e5) + 4095) & ~4095)) # kernel initialization size

Given that we are only interested in the value of the symbol, let's match
any character in the set 'a-zA-Z' instead.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

Hi all,

Please apply this patch to 5.4 (and older releases if you feel it
necessary), as it fixes a build error that I see when linking with
ld.lld on certain distribution configurations after upstream commit
5214028dd89e ("x86/boot: Correct relocation destination on old linkers")
was applied in 5.4.48.

$ make -skj"$(nproc)" CC=clang LD=ld.lld O=out/x86_64 olddefconfig bzImage
...
ld.lld: error: undefined symbol: ZO__end
>>> referenced by arch/x86/boot/header.o:(.header+0x71)
...

While the commit message references bc7c9d620 as the first problematic
commit, I see the same behavior of capital versus lowercase letters from
nm here too. I assume this is not seen in mainline because this commit
was already in the tree when 5214028dd89e was applied.

v5.4.47:

$ nm -S out/x86_64/arch/x86/boot/compressed/vmlinux | grep " _end"
000000000094b000 B _end

$ cat out/x86_64/arch/x86/boot/zoffset.h
#define ZO__ehead 0x00000000000003b1
#define ZO__end 0x000000000094b000
#define ZO__text 0x000000000090ce50
#define ZO_efi32_stub_entry 0x0000000000000190
#define ZO_efi64_stub_entry 0x0000000000000390
#define ZO_efi_pe_entry 0x00000000000002f0
#define ZO_input_data 0x00000000000003b1
#define ZO_startup_32 0x0000000000000000
#define ZO_startup_64 0x0000000000000200
#define ZO_z_input_len 0x000000000090ca9e
#define ZO_z_output_len 0x0000000002eeb42c

v5.4.48:

$ nm -S out/x86_64/arch/x86/boot/compressed/vmlinux | grep " _end"
000000000094b000 b _end

$ cat out/x86_64/arch/x86/boot/zoffset.h
#define ZO__ehead 0x00000000000003b1
#define ZO__text 0x000000000090ccf0
#define ZO_efi32_stub_entry 0x0000000000000190
#define ZO_efi64_stub_entry 0x0000000000000390
#define ZO_efi_pe_entry 0x00000000000002f0
#define ZO_input_data 0x00000000000003b1
#define ZO_startup_32 0x0000000000000000
#define ZO_startup_64 0x0000000000000200
#define ZO_z_input_len 0x000000000090c93b
#define ZO_z_output_len 0x0000000002eeb4c8

v5.4.48 with this patch:

$ nm -S out/x86_64/arch/x86/boot/compressed/vmlinux | grep " _end"
000000000094b000 b _end

$ cat out/x86_64/arch/x86/boot/zoffset.h
#define ZO__ehead 0x00000000000003b1
#define ZO__end 0x000000000094b000
#define ZO__text 0x000000000090cd60
#define ZO_efi32_stub_entry 0x0000000000000190
#define ZO_efi64_stub_entry 0x0000000000000390
#define ZO_efi_pe_entry 0x00000000000002f0
#define ZO_input_data 0x00000000000003b1
#define ZO_startup_32 0x0000000000000000
#define ZO_startup_64 0x0000000000000200
#define ZO_z_input_len 0x000000000090c9af
#define ZO_z_output_len 0x0000000002eeb4c8

Hopefully this clears things up.

Cheers,
Nathan

 arch/x86/boot/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/boot/Makefile b/arch/x86/boot/Makefile
index e2839b5c246c..6539c50fb9aa 100644
--- a/arch/x86/boot/Makefile
+++ b/arch/x86/boot/Makefile
@@ -87,7 +87,7 @@ $(obj)/vmlinux.bin: $(obj)/compressed/vmlinux FORCE
 
 SETUP_OBJS = $(addprefix $(obj)/,$(setup-y))
 
-sed-zoffset := -e 's/^\([0-9a-fA-F]*\) [ABCDGRSTVW] \(startup_32\|startup_64\|efi32_stub_entry\|efi64_stub_entry\|efi_pe_entry\|input_data\|_end\|_ehead\|_text\|z_.*\)$$/\#define ZO_\2 0x\1/p'
+sed-zoffset := -e 's/^\([0-9a-fA-F]*\) [a-zA-Z] \(startup_32\|startup_64\|efi32_stub_entry\|efi64_stub_entry\|efi_pe_entry\|input_data\|_end\|_ehead\|_text\|z_.*\)$$/\#define ZO_\2 0x\1/p'
 
 quiet_cmd_zoffset = ZOFFSET $@
       cmd_zoffset = $(NM) $< | sed -n $(sed-zoffset) > $@

base-commit: 67cb016870e2fa9ffc8d34cf20db5331e6f2cf4d
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622195639.2670308-1-natechancellor%40gmail.com.
