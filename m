Return-Path: <clang-built-linux+bncBCAIHYNQQ4IRBJ4T2ODAMGQEE4A5HNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 839853B3532
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 20:06:32 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id l123-20020acad4810000b02901f1fb44dca7sf4296027oig.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 11:06:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624557991; cv=pass;
        d=google.com; s=arc-20160816;
        b=BW+U9FFIUC0ypdLvx1NxQy9ajwdBRaW2QrMWRgZ0wOkvWuPaO+9qJL4TNBW1tE9a/F
         0JquaykxKXb0jeyD6XKE+3dh9ZU49acCw10oqbWUVkyaCPCDIrprJswwkdMdQheSNprP
         /RGssKyxJnrxqGPA35WkZDzZixeqUPN8m2mKu5nbWzerzPRa4G+hyLuH7/K3AM7NTOsv
         CiMEoRvPqKj9HDLAZp4G1MqZpYQMBtRMrOaQjcl8hFP45EAoK0ZvzS93P3XorGcZgxZ8
         0Kx21HpA0p1ne0U0vl+tTzH4MjUbfJ3kR6lFH2VLVGYkHnGhyWSvFRsNq8Hqne5sqPzc
         4xtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:from:subject:mime-version
         :message-id:date:reply-to:dkim-signature;
        bh=4jEHyQkmNnyNjzGqHIL/xsvI3E2heKg8Ypo49VNj8m0=;
        b=vCKmDYJsvfveHC+P5PBx7kR8P+k3dzjSx9OXOJmk4ZSqsYCzoP4yv+ReBZfDFBDXqu
         h3xR7mV8r5LmlQMa+10vrKVTtCXfJyZtLK/NUVEPe7XOJ2LYtgNtv045fvRC1Bl8j7ie
         7PGvXr3aoYmg3HzyEYBE4K+brFvnuxhkF/wUsDW/QskG3nW/nuQOL6Ld5Ct7McGQTk8S
         g2hTp8ZtRt8B5KhTw95h5dsEq62wJFr7s20R1tWgg0r7EIfg0PsEHvn1pUDgU/K9Mt3o
         BRFFcNeEPACNHntvI6Lvs277wQ1Da/9tWOyJb5TpvU2VC1R0QTM99RLsj8YYJOuYxCk6
         aQyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ey0VVNmP;
       spf=pass (google.com: domain of 3psnuyaykezkl73gc59hh9e7.5hf5e3g9-4nbem-ebgnq9hh9e79khnil.5hf@flex--seanjc.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3psnUYAYKEZkL73GC59HH9E7.5HF5E3G9-4NBEM-EBGNQ9HH9E79KHNIL.5HF@flex--seanjc.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=reply-to:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4jEHyQkmNnyNjzGqHIL/xsvI3E2heKg8Ypo49VNj8m0=;
        b=AmEaASt+1y7IwrvxdqnKCviVCePDXJmFyv+xYHz87UWYUYMOj4PfJydlesCPx8FNbR
         KjUbrYTS5gV9IAbsThKVgNYHtK6xokOaAmjIYZa/QKJNoM8rEXSDiWOzgVAg+KuxNtRR
         EfcmpoqrLKMfT1iVfebqEKMKbOEAdfwnu/ydmQ+Xtb0riOAqaknYhgqlFSrBBf8Wtjyn
         Nj6CM0UOlUtJ7HEc8rydQVYvg7NZDnA1rjsuFQyvRNZfYzn2YXPV7D98H8fIo6r7jfsI
         RXX3HW6MGhw9In+22fXTnfDXpG4YZ77CDbtaV6D4GczeiAnQLisCEV4TwbGlylcVwSuy
         xzcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:date:message-id:mime-version:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4jEHyQkmNnyNjzGqHIL/xsvI3E2heKg8Ypo49VNj8m0=;
        b=bHGqxRI/rnALGwhytFpwU6ueiUrFmLHh/0YbT/1sH2lumYaozvGtEvpNcIcM/po5zk
         mlie/tHqVxXQC+H/0E9uYcT4hDAn4DxPdohlpLclDzp0uC6TxrxxaeM2mB124nhabiVe
         RwTN1HnL9HGVpW3Eqs5tt9KXyJmgP51n1Hmim0TNIcNyGjKDL39pyehr9YewctqwN/J0
         7uKTiFxDr3O+FzZSbJLgHQ5hyTwVG1Ps45h0hy+FGQxjLY/5gIfjT0kqRmE2LnfrsYDX
         D7xdugBfM9NLHKMgREoZfeF+bBvj44c1zAMZ/I2w0s4wQxH0svVOTB6cAuzYGT4xw0jy
         XcLQ==
X-Gm-Message-State: AOAM5333xGvNBl2DRQVizO1KIxWgT63Y58eK2QiHJZ24+Zua4RUwwGNe
	eQoNuNtFhG2D3dyv0MzA+/M=
X-Google-Smtp-Source: ABdhPJyWKQkbeOte1Qq2YqGxaDK4xaqQ3PlS1acTDqVE4ZWt5epC6VFwOyYpL2/qm5nNgR7L4PHUgA==
X-Received: by 2002:a54:4886:: with SMTP id r6mr5226520oic.108.1624557991238;
        Thu, 24 Jun 2021 11:06:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:30c1:: with SMTP id r1ls2408952otg.5.gmail; Thu, 24 Jun
 2021 11:06:30 -0700 (PDT)
X-Received: by 2002:a9d:7282:: with SMTP id t2mr5820191otj.288.1624557990918;
        Thu, 24 Jun 2021 11:06:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624557990; cv=none;
        d=google.com; s=arc-20160816;
        b=OtC+G4y0Ck4fWaJ5eLDFPiNOvqbR7amS0zC1szKCKrAgxVrXmgvANnWAI5gzYBGQ/l
         3S9WPegztVVBW4nuz/6aVc0124FvJAe8vD7WEGTAGR7aTAUSzN3JS5rCIv8GO2GHeAEe
         ZVlqeF9RYMNdnt1VT8+NtenTkMk+9TZsEFjMIbtzmEYjzZniDSkNChr4F64dYam5NKoy
         bc2Suh4e2eY/ki3uvjPiagwoj/jLVP3nMBhZiY5BGvvGXivGTEa7oFcKEYD5m/XRXPof
         FFHycKMIjJ0XNPQZYl8NevtAlwPFz+ZTifd+kzrCflOISdArfTZKcJT6HieQg78Tnbi8
         ELsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:reply-to
         :dkim-signature;
        bh=iLHcgth/bnJSq1B42NH4cj6yM3BU3UaaURi2JWPns6Q=;
        b=GXA4s3B8fjj9udYE4Zuba1fKmQxczSOERAC48ow7j2O9rJ3TXtoH4pZ2cB39DtDd9s
         f2RP15f0mwHuO+4yek7YMjyn2nW0rkHB/ZBrnTtlRrSHzoKBOim8quvFvZUxv0uqxsyi
         EbkdDwERukODVvF8EFmlIly22FehT3wLqCr6ncoVPN+xUTPe98l+kEhcqTxKGGfXAmXQ
         CsCpWKiWooye9Ck/RSEFjxH2Y2ULmgBz1FcrALSzvIb6y1rmE4NugN2Q5oMWTrYw5kWz
         e3Mtz5lcdLMSkoERkufvzIp8qLW73cXrkuZIBv2azsKfiLAuU2XOc81+ZKyFGdHCZ3mE
         0omw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ey0VVNmP;
       spf=pass (google.com: domain of 3psnuyaykezkl73gc59hh9e7.5hf5e3g9-4nbem-ebgnq9hh9e79khnil.5hf@flex--seanjc.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3psnUYAYKEZkL73GC59HH9E7.5HF5E3G9-4NBEM-EBGNQ9HH9E79KHNIL.5HF@flex--seanjc.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id m4si412609otn.3.2021.06.24.11.06.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jun 2021 11:06:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3psnuyaykezkl73gc59hh9e7.5hf5e3g9-4nbem-ebgnq9hh9e79khnil.5hf@flex--seanjc.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id g3-20020a256b030000b0290551bbd99700so494497ybc.6
        for <clang-built-linux@googlegroups.com>; Thu, 24 Jun 2021 11:06:30 -0700 (PDT)
X-Received: from seanjc798194.pdx.corp.google.com ([2620:15c:f:10:e9e:5b86:b4f2:e3c9])
 (user=seanjc job=sendgmr) by 2002:a25:d0c3:: with SMTP id h186mr7080679ybg.150.1624557990486;
 Thu, 24 Jun 2021 11:06:30 -0700 (PDT)
Reply-To: Sean Christopherson <seanjc@google.com>
Date: Thu, 24 Jun 2021 11:06:25 -0700
Message-Id: <20210624180625.159495-1-seanjc@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.93.g670b81a890-goog
Subject: [PATCH] KVM: x86: Fix uninitialized return value bug in
 EXIT_HYPERCALL enabling
From: "'Sean Christopherson' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Paolo Bonzini <pbonzini@redhat.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Sean Christopherson <seanjc@google.com>, Vitaly Kuznetsov <vkuznets@redhat.com>, 
	Wanpeng Li <wanpengli@tencent.com>, Jim Mattson <jmattson@google.com>, 
	Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, clang-built-linux@googlegroups.com, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: seanjc@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ey0VVNmP;       spf=pass
 (google.com: domain of 3psnuyaykezkl73gc59hh9e7.5hf5e3g9-4nbem-ebgnq9hh9e79khnil.5hf@flex--seanjc.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3psnUYAYKEZkL73GC59HH9E7.5HF5E3G9-4NBEM-EBGNQ9HH9E79KHNIL.5HF@flex--seanjc.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sean Christopherson <seanjc@google.com>
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

Zero out 'r' on success in the KVM_CAP_EXIT_HYPERCALL case.  As noted by
clang, the happy path will return an uninitialized value:

  arch/x86/kvm/x86.c:5649:7: error: variable 'r' is used uninitialized
   whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
                  if (cap->args[0] & ~KVM_EXIT_HYPERCALL_VALID_MASK) {
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  arch/x86/kvm/x86.c:5663:9: note: uninitialized use occurs here
          return r;
               ^
  arch/x86/kvm/x86.c:5649:3: note: remove the 'if' if its condition is always true
                  if (cap->args[0] & ~KVM_EXIT_HYPERCALL_VALID_MASK) {
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  arch/x86/kvm/x86.c:5540:7: note: initialize the variable 'r' to silence this warning
          int r;
               ^
                = 0

Opportunistically move the "r = -EINVAL;" above the check to match the
pattern used in almost all other cases.

Fixes: 0dbb11230437 ("KVM: X86: Introduce KVM_HC_MAP_GPA_RANGE hypercall")
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 arch/x86/kvm/x86.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index e4cea00c49a3..647922ba97df 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -5646,11 +5646,12 @@ int kvm_vm_ioctl_enable_cap(struct kvm *kvm,
 			r = kvm_x86_ops.vm_copy_enc_context_from(kvm, cap->args[0]);
 		return r;
 	case KVM_CAP_EXIT_HYPERCALL:
-		if (cap->args[0] & ~KVM_EXIT_HYPERCALL_VALID_MASK) {
-			r = -EINVAL;
+		r = -EINVAL;
+		if (cap->args[0] & ~KVM_EXIT_HYPERCALL_VALID_MASK)
 			break;
-		}
+
 		kvm->arch.hypercall_exit_enabled = cap->args[0];
+		r = 0;
 		break;
 	case KVM_CAP_EXIT_ON_EMULATION_FAILURE:
 		kvm->arch.exit_on_emulation_error = cap->args[0];
-- 
2.32.0.93.g670b81a890-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210624180625.159495-1-seanjc%40google.com.
