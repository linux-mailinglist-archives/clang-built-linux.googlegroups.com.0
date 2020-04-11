Return-Path: <clang-built-linux+bncBDN7FYMXXEORBU4ZY72AKGQET5M25HI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAEB1A526B
	for <lists+clang-built-linux@lfdr.de>; Sat, 11 Apr 2020 15:57:40 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id 60sf3757986otv.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 11 Apr 2020 06:57:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586613459; cv=pass;
        d=google.com; s=arc-20160816;
        b=XOglMR070VCxcuEQKBGGzcx825y9rR1G/sK5HP2cGzI2bWGLM4yPzBp3uy7pN7i4J6
         a/vwFeI5CaIpeUKK+fnCEMJamq+uJ+FFgedbsVQ/kEDcpduf7U0Uv9297j2MWwv7/Vqm
         8BZKpf5JK3rzM4ZV7e2mBJjezI9x9t2RK7QhvbCCx3yvxsktLuXopBPTUCt2eGEyjJVI
         M9eHAiLnQmXosFu5U4QOEbHnU1Hok7jXiMX1SbLi9hQxTtict4BEVXm0Zeg3xdAr7kXX
         CkbhrQLJDAvAFJ6fKo585BHK5o8EyXFVpHK1FynW/qDxtG1RgMXbGqy/pYbklbbSQ+Fu
         0MpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:user-agent:mime-version
         :in-reply-to:references:cc:to:subject:from:date:sender
         :dkim-signature:dkim-signature;
        bh=vOV0BwnKE54ZbCKjDXpbe+NgRnXu9OGAT+0K88jXgb8=;
        b=W9bXGUJCcGhfNdr9IDIA268e8PLpJtHqJBttovqoj4lZr2pkzUaYoKn/IH+7T7IHum
         5Da/3vhd9nD2g/SMfknfJkqodB5qZDIBqnnKBcNykw11SDgNxgmvc+9j9OBsAMlW5slS
         TdnG4DrWDdip2Lsfk21mcTW3fTpm7JtPoV5myBBBfhG0W0fZvilwGo627Dmku7fByeP+
         ucYoXFIR53LhtG+TabyLcFEKdbEO639ALHxKAVzcipfsacI+Ipve+MXD42hVtOuwPof1
         +0CVMRh66tJu0FB5u/LgL2tSnxmliyrQqzorWHb3hQYmQOXSHxiwRqAikYvXrl4Iaprf
         bNrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DMp+YOud;
       spf=pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=npiggin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:subject:to:cc:references:in-reply-to:mime-version
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vOV0BwnKE54ZbCKjDXpbe+NgRnXu9OGAT+0K88jXgb8=;
        b=Grt5HM11Lt0uYP8j+XLbWm8luCAoKO3S/Yz+7CIJ9vJTrUR26b+XK72lQTSNZ8zi2L
         kkQj2GEJEypINnqWlxz2C2C7qJWXYi9Bv208UsyHZVteRttz0a6WgKgKgtf5bCWhWlk2
         nb8YfxMkEX8lE9fdg7KaSTmnv1+tDW45BaA4miVfglMDSHj3fOk/l82nsa3kG6ynU5Bv
         tjCEn2fZTMJE14VhF5cCQDGtJyQEjioRa/lzSsQC3H+NM6mqof/aiMCnbq3gK2PMGD+P
         Tl/QQOIl0ReB4t9sPN+Ev8SUxwCgEzL7W9osEsbZqD+XJ+oRks3VfeAiaCminUMV/AQ3
         PHWw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:subject:to:cc:references:in-reply-to:mime-version
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vOV0BwnKE54ZbCKjDXpbe+NgRnXu9OGAT+0K88jXgb8=;
        b=laV1tWIggM3rKnIEXXwOrqZzixOhRYowMGxETTFwkqdRPISzs2XRHU9k2TCzs4kW34
         e9KlyF57F6A+j+WJxyZM5ynKuKGbPiCWmu96/yqGVDxgoAr0dAoKsId5JoVxVHJhhxSq
         vKVdKIot4xfzrrLAnme0+Q/2VBi1klVxfJKlDtL7te4ux7x4uaZAv1Eb9SF2for5gMc/
         amm9xNkpZHqvLllz+qD52tLJxmtqccAA5C32PFCJKfJDzOiF7kiko6KYSCZD4HcRsDpx
         th0OC01HT0+rm2cQzxKtKfIOznZFQB8X8Ll7MjBkxEzBDbpbIaB8d3JCWfzw9RVCknln
         HghA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:subject:to:cc:references
         :in-reply-to:mime-version:user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vOV0BwnKE54ZbCKjDXpbe+NgRnXu9OGAT+0K88jXgb8=;
        b=Kwp47JituWQjiOMhOtZuvLfAt0MDYavm2UygVdUBFi9p09c1rGhNb5TjZUyPTtIK/I
         Kar/RlJLwiRx853m05dT/Q2QZzfgXhh6PxvA0ZAFiSdKXW3fkMaI9vZINb3Tf3bAUidZ
         j0CvHvNAGtYriCCweQWFlDzJH1uJhH2RQXrx0AgHLYNOIB7jberliISbW38+0R1MPrfD
         tgHe4dNksiCOQhmCf27HWVLBz/F908VwRNiXT/NeAReP9g44qC5eOSYtjNrMPKDHSozN
         FXflwMIxbsnrTwScmqlCadREtUSZnAYmEcZ7HAKoYsIUERWV6PewPqu0/kDQCaZLLcyd
         UKLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaHvp0dPOgTiH6OhbPeIPy8CoVRmD18v/9rtCpnj4m9d8V2f+/k
	imG97Yh3iySBDjyQoTmKBXc=
X-Google-Smtp-Source: APiQypJxVgsB/Y6pM2JoNyxnXFEHMlgaYPkS8Qpk1pnevH7+lQnqvVkVrzPIgAG+nYIDEUUirIEnhQ==
X-Received: by 2002:aca:3986:: with SMTP id g128mr6262778oia.3.1586613459400;
        Sat, 11 Apr 2020 06:57:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cd45:: with SMTP id d66ls6478726oig.7.gmail; Sat, 11 Apr
 2020 06:57:39 -0700 (PDT)
X-Received: by 2002:aca:b144:: with SMTP id a65mr6633839oif.75.1586613459080;
        Sat, 11 Apr 2020 06:57:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586613459; cv=none;
        d=google.com; s=arc-20160816;
        b=w0ONfFAEO6Bzc6dOOhDz3/M9hSwjKO4VtDQFi5NCv1AGT85DiO8tKwkulrS8Infrx0
         nxAPff/LsnoCV3wsX6y9NJCk7Km+44xUMrjc7ynoSaH/p3gdb96dLSZYb86Vye/u9MZt
         Y2xlM4VgvTKjJLnz7DHfrf2wc6wJxZoigy/yVQFOM2VGtAnJS1A7B1kTSbjn3JRRY58e
         b4Fo+Ga9VJ+o+4V2LJueya4nj693NqOXBiT+wpqWPgwX6Sbh4WSC+PbEYbmLkrrONdGR
         BX8rwBSNx+CQiUG0zatkhCsi2LItfoUg9faFHdAh7BKJFn9e5momHWQi2bMnPGiodkBY
         l0hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:user-agent:mime-version
         :in-reply-to:references:cc:to:subject:from:date:dkim-signature;
        bh=CA2EXUjq+Smems++Ma6jf28vZQyf783AuJ5tepKvzfA=;
        b=0YcF59/FwIMb+JYZIVUBy6oubs/8v577sDDSWNgFIT7KjeQwzHzmUUCr4uyChcx7dr
         YLOmDO9rpjc+4uvel2oZUTTGZEim7HYRjw+Vg/cTJRTQwvPiU5UC4vgKdetf9FbWHiZJ
         beEarj2lIO5zbqm524E8WGCGkwQ/mDnMWWgVw1r5/4DbkN/G7HYVo38xaGaptJFQYyys
         gG9nyURPckyF2UxCTiszZndzSl2WsQgZneVkJzu7DOnvmtFYiln/ejM82Qrrw4sCWgKU
         N5ZxMopxrR+G8nhcH0gZQpyv+2gGzYnPxDVqwM9LkkzuarNGFYEu+nTMj8Vk885BAbWY
         luoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DMp+YOud;
       spf=pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=npiggin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id m132si366613oig.3.2020.04.11.06.57.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Apr 2020 06:57:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id t40so1814961pjb.3
        for <clang-built-linux@googlegroups.com>; Sat, 11 Apr 2020 06:57:39 -0700 (PDT)
X-Received: by 2002:a17:90b:1985:: with SMTP id mv5mr11349089pjb.69.1586613458322;
        Sat, 11 Apr 2020 06:57:38 -0700 (PDT)
Received: from localhost (60-241-117-97.tpgi.com.au. [60.241.117.97])
        by smtp.gmail.com with ESMTPSA id u18sm4380454pfl.40.2020.04.11.06.57.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Apr 2020 06:57:37 -0700 (PDT)
Date: Sat, 11 Apr 2020 23:57:23 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: Boot flakiness with QEMU 3.1.0 and Clang built kernels
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org,
	=?iso-8859-1?q?C=E9dric?= Le Goater <clg@fr.ibm.com>, qemu-ppc@nongnu.org,
	qemu-devel@nongnu.org, David Gibson <david@gibson.dropbear.id.au>
References: <20200410205932.GA880@ubuntu-s3-xlarge-x86>
	<1586564375.zt8lm9finh.astroid@bobo.none>
	<20200411005354.GA24145@ubuntu-s3-xlarge-x86>
	<1586597161.xyshvdbjo6.astroid@bobo.none>
In-Reply-To: <1586597161.xyshvdbjo6.astroid@bobo.none>
MIME-Version: 1.0
User-Agent: astroid/0.15.0 (https://github.com/astroidmail/astroid)
Message-Id: <1586612535.6kk4az03np.astroid@bobo.none>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: npiggin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DMp+YOud;       spf=pass
 (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=npiggin@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Nicholas Piggin's on April 11, 2020 7:32 pm:
> Nathan Chancellor's on April 11, 2020 10:53 am:
>> The tt.config values are needed to reproduce but I did not verify that
>> ONLY tt.config was needed. Other than that, no, we are just building
>> either pseries_defconfig or powernv_defconfig with those configs and
>> letting it boot up with a simple initramfs, which prints the version
>> string then shuts the machine down.
>> 
>> Let me know if you need any more information, cheers!
> 
> Okay I can reproduce it. Sometimes it eventually recovers after a long
> pause, and some keyboard input often helps it along. So that seems like 
> it might be a lost interrupt.
> 
> POWER8 vs POWER9 might just be a timing thing if P9 is still hanging
> sometimes. I wasn't able to reproduce it with defconfig+tt.config, I
> needed your other config with various other debug options.
> 
> Thanks for the very good report. I'll let you know what I find.

It looks like a qemu bug. Booting with '-d int' shows the decrementer 
simply stops firing at the point of the hang, even though MSR[EE]=1 and 
the DEC register is wrapping. Linux appears to be doing the right thing 
as far as I can tell (not losing interrupts).

This qemu patch fixes the boot hang for me. I don't know that qemu 
really has the right idea of "context synchronizing" as defined in the
powerpc architecture -- mtmsrd L=1 is not context synchronizing but that
does not mean it can avoid looking at exceptions until the next such
event. It looks like the decrementer exception goes high but the
execution of mtmsrd L=1 is ignoring it.

Prior to the Linux patch 3282a3da25b you bisected to, interrupt replay
code would return with an 'rfi' instruction as part of interrupt return,
which probably helped to get things moving along a bit. However it would
not be foolproof, and Cedric did say he encountered some mysterious
lockups under load with qemu powernv before that patch was merged, so
maybe it's the same issue?

Thanks,
Nick

The patch is a bit of a hack, but if you can run it and verify it fixes
your boot hang would be good.
---

diff --git a/target/ppc/translate.c b/target/ppc/translate.c
index b207fb5386..1d997f5c32 100644
--- a/target/ppc/translate.c
+++ b/target/ppc/translate.c
@@ -4364,12 +4364,21 @@ static void gen_mtmsrd(DisasContext *ctx)
     if (ctx->opcode & 0x00010000) {
         /* Special form that does not need any synchronisation */
         TCGv t0 = tcg_temp_new();
+        TCGv t1 = tcg_temp_new();
         tcg_gen_andi_tl(t0, cpu_gpr[rS(ctx->opcode)],
                         (1 << MSR_RI) | (1 << MSR_EE));
-        tcg_gen_andi_tl(cpu_msr, cpu_msr,
+        tcg_gen_andi_tl(t1, cpu_msr,
                         ~(target_ulong)((1 << MSR_RI) | (1 << MSR_EE)));
-        tcg_gen_or_tl(cpu_msr, cpu_msr, t0);
+        tcg_gen_or_tl(t1, t1, t0);
+
+        gen_update_nip(ctx, ctx->base.pc_next);
+        gen_helper_store_msr(cpu_env, t1);
         tcg_temp_free(t0);
+        tcg_temp_free(t1);
+        /* Must stop the translation as machine state (may have) changed */
+        /* Note that mtmsr is not always defined as context-synchronizing */
+        gen_stop_exception(ctx);
+
     } else {
         /*
          * XXX: we need to update nip before the store if we enter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1586612535.6kk4az03np.astroid%40bobo.none.
