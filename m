Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZUX4TZQKGQEEGTAC7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E2218FD7F
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 20:20:07 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id s8sf10637855otd.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 12:20:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584991206; cv=pass;
        d=google.com; s=arc-20160816;
        b=y4ouYicsMuCmqS+rbOoyzkGVOlNrkSjzqjZHO//wIPsUVgh2Zor9Fct2i4ZnclAgvV
         UPklOj7aMKV1EbIrUA8I1ljlUXBxT8DqfBbvXfuhSDStzUrTH3G4yRJgvihXDS3NNxIe
         3fLumt3G1diL6K8yXnTz1T4JVJWBIeuKI3Rh+hq2JE5VBoh8oYgoJXbSqGKH+gbB+fra
         /uguaagDrFTtDWeT00gj2R+3tlW+wIlvcHJU6Op3a5v7gC72eX8Hs9T18QscbYf2+rz3
         ewKqahIeZlCLUqmw2iaPsQmEL+fEzMOMiTTiPRmT3oJ+ZYphwYNX/m8GUS4y4ae2HhUS
         Zw7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=TUCrCejIYnI3ht8dLF6WoXpU7F3WuWgthZGLOS5XfKc=;
        b=JjxrKXsWjIcxqpcDHxDkWCofDrYe3kFSX9E9pOv35YQDq2SX5NWMe55YSB6e08VMmb
         I3Ch2LLxTBgkipUkD/3NWuK64Vh2coEk+KeJKNRWSgUTeCkbwbxlcfsiD/V9iEr7z/Bn
         u1kN3VaK3fVdvBBG4XRKxDZq6KygcgvpVC74hJlhfD6CS6vy+NzNtv6AMyPGNpZL8m3J
         z+Of03wbJP7JLk66OezqdrxJYzImlzivG5rF7SPiIHOZi7DYbin0uhx+LX30CkXj9xjl
         t5b8tYuyjmk4+nXQY3tofoz4VjkAZn7d+J0UzH9EOHh54MIJvSSTn8UIjUZu2urfbHpe
         ZDrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=frWZZr05;
       spf=pass (google.com: domain of 35qt5xgwkanoj9ao6qhjeanockkcha.8ki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=35Qt5XgwKANoJ9AO6QHJEANOCKKCHA.8KI@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TUCrCejIYnI3ht8dLF6WoXpU7F3WuWgthZGLOS5XfKc=;
        b=VyhI1HtqdsSY0dQdWmO094QnENMe+EOqfRuzubwJq1Vc21TFC7usaw7WUaXv8lDHWy
         Q0fJIZjE15Ti7HyTndRKlB2E2NA+z/ExDVGCu0MYbYXSr3KG2GFtv076fWzGDOjCQukS
         01A2O3MIK27M8bX/1k6jwI7GIxDyTmCM3c9KWBdF7ruUUQwSv6iz7Pnu2OX5PYrb42oK
         /qVoOxV5m9wHnlxYJhJ/d2cnboHfvIzzFKoZ/OdM64z+PPcNtbtokqU3mTOoVk3Kc0Vm
         xyPxqOOrhMkXJNf+gydnl559aVQBAMeHRtT6afTN2VQ68BFEyg34Z4AidfMbJzdeQp9d
         20hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TUCrCejIYnI3ht8dLF6WoXpU7F3WuWgthZGLOS5XfKc=;
        b=lT5xInb0NoeF1cevpMHLYbTRkbg0lKs0EGWtC9X/+WcXmb81ty1haZ+jDrok1q+kz4
         Gb+2IIDs6agJH8ai0esPXSDoSasND84bV+70oSFsl0umvbik41zSQQsitutPnc3boPz6
         +5XpmGqIvuTDc30kosVKjK7XG6w6aHuQyhZlJEbXEm3UrdYTJxht8RUKYXPVnUOs3kc3
         9Vo1k0bJ/RKdsc86IIe8+T/Wvu6UkdJ55yoT1rrVCjxTqHRvdG7XuLEAyaykyLQzPAUh
         8ljO0hgCd29Td0vrFvhHqNjiWAwse2rNLbsSMyLfurT80Raq5qKpczFtwiFEg1QXIE8B
         L47w==
X-Gm-Message-State: ANhLgQ2kjpSc7UxY6VRbPS3RpzkdJbD/67X8R1Ru1mG2+L/QL6f0yXIH
	Ig7YMElawMzqbqvhYdkFzo8=
X-Google-Smtp-Source: ADFU+vvUT1hKNvXjBfu2shp++WRpwEDWG6nRuWBJmGrFjmUQzQF1q8zPurJKPduF8ABtyt1CCXoRtg==
X-Received: by 2002:a9d:58cb:: with SMTP id s11mr19744117oth.34.1584991206296;
        Mon, 23 Mar 2020 12:20:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:787:: with SMTP id 7ls6765104oto.3.gmail; Mon, 23 Mar
 2020 12:20:05 -0700 (PDT)
X-Received: by 2002:a05:6830:11cc:: with SMTP id v12mr19916753otq.131.1584991205905;
        Mon, 23 Mar 2020 12:20:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584991205; cv=none;
        d=google.com; s=arc-20160816;
        b=LwW9EfDG+Rbw2fqY7R7+JZj2ajZjustS2nuK4TKX6VGr/SwgLWcUedYGZPbjJwQpJG
         0CSrpCUB3+r6sylwkDShkfl2gjLkwqkJwjCRGOoxKInrBizp2UUfuWKVwyPlMCJ99M9+
         oTfwcaBJPAA6SNAet59ivzPQHVkWqHtkY3pahK4dFiIMQa0nt95nsK/ANF2kyRpO/vqK
         8OHpYHg+s/a2HN6q9ttqjuFuVDQSy8xtz0n0T2ZhnPks99e8vFVCmhb782Yz+06aFmo9
         ttDl+X39rTaHpxYuVU012Q/iwhuMFlahQOFCwmg+VqlaRCmK8WGhwW9qUg5/JODaj9tD
         A8hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=EuEgHEvOOlLZGILEOt39luhrShhjhA+dXySCvlN5S/w=;
        b=ZHhK75lHX1DyYCV9GBPc6x00qpIQG4Slg9h/rcFhRVdr1rMDYp87SCautT3n87vMAC
         vXyFUzcbr1ejrxooo7JjcD2MSEb9RhELr/Ub4BEh3D4YptfhtVvxI4RVzXm5dqGtOdOY
         1v2uZdySTwalbsV5JHPXlmFe9tss5LgANkXwvi1KiSNj6sEoi3XLy/gKKMylk4chvv/o
         7doLdkWbfXR/Z0n3kiPDOb731d3LA13/VsAKQ1rcEKoZiVNamxBOeaPnJL9cFMEqHT5N
         otse2q1wDUqchjSnNtfoCcI23midSP5WB5hG57CfPD7Y0f/JbZ5bSDh0F63u2gSQMeX/
         pDqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=frWZZr05;
       spf=pass (google.com: domain of 35qt5xgwkanoj9ao6qhjeanockkcha.8ki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=35Qt5XgwKANoJ9AO6QHJEANOCKKCHA.8KI@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id r1si63512oot.0.2020.03.23.12.20.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 12:20:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of 35qt5xgwkanoj9ao6qhjeanockkcha.8ki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id c1so13328897qkg.21
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 12:20:05 -0700 (PDT)
X-Received: by 2002:a0c:fd85:: with SMTP id p5mr6095302qvr.205.1584991205290;
 Mon, 23 Mar 2020 12:20:05 -0700 (PDT)
Date: Mon, 23 Mar 2020 12:12:43 -0700
In-Reply-To: <CAKwvOdn10Ts_AU6i+7toj7NkMwK-+0yr5wTrN0XEDudBWS0sPQ@mail.gmail.com>
Message-Id: <20200323191243.30002-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAKwvOdn10Ts_AU6i+7toj7NkMwK-+0yr5wTrN0XEDudBWS0sPQ@mail.gmail.com>
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH] KVM: VMX: don't allow memory operands for inline asm that
 modifies SP
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: pbonzini@redhat.com, sean.j.christopherson@intel.com
Cc: ndesaulniers@google.com, bp@alien8.de, clang-built-linux@googlegroups.com, 
	dvyukov@google.com, glider@google.com, hpa@zytor.com, jmattson@google.com, 
	joro@8bytes.org, kvm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	mingo@redhat.com, syzbot+3f29ca2efb056a761e38@syzkaller.appspotmail.com, 
	syzkaller-bugs@googlegroups.com, tglx@linutronix.de, vkuznets@redhat.com, 
	wanpengli@tencent.com, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=frWZZr05;       spf=pass
 (google.com: domain of 35qt5xgwkanoj9ao6qhjeanockkcha.8ki@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=35Qt5XgwKANoJ9AO6QHJEANOCKKCHA.8KI@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

THUNK_TARGET defines [thunk_target] as having "rm" input constraints
when CONFIG_RETPOLINE is not set, which isn't constrained enough for
this specific case.

For inline assembly that modifies the stack pointer before using this
input, the underspecification of constraints is dangerous, and results
in an indirect call to a previously pushed flags register.

In this case `entry`'s stack slot is good enough to satisfy the "m"
constraint in "rm", but the inline assembly in
handle_external_interrupt_irqoff() modifies the stack pointer via
push+pushf before using this input, which in this case results in
calling what was the previous state of the flags register, rather than
`entry`.

Be more specific in the constraints by requiring `entry` be in a
register, and not a memory operand.

Reported-by: Dmitry Vyukov <dvyukov@google.com>
Reported-by: syzbot+3f29ca2efb056a761e38@syzkaller.appspotmail.com
Debugged-by: Alexander Potapenko <glider@google.com>
Debugged-by: Paolo Bonzini <pbonzini@redhat.com>
Debugged-by: Sean Christopherson <sean.j.christopherson@intel.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/x86/kvm/vmx/vmx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/kvm/vmx/vmx.c b/arch/x86/kvm/vmx/vmx.c
index 4d22b1b5e822..310e8c1169b8 100644
--- a/arch/x86/kvm/vmx/vmx.c
+++ b/arch/x86/kvm/vmx/vmx.c
@@ -6277,7 +6277,7 @@ static void handle_external_interrupt_irqoff(struct kvm_vcpu *vcpu)
 #endif
 		ASM_CALL_CONSTRAINT
 		:
-		THUNK_TARGET(entry),
+		[thunk_target]"r"(entry),
 		[ss]"i"(__KERNEL_DS),
 		[cs]"i"(__KERNEL_CS)
 	);
-- 
2.25.1.696.g5e7596f4ac-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323191243.30002-1-ndesaulniers%40google.com.
