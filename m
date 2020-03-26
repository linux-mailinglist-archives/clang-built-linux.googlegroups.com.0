Return-Path: <clang-built-linux+bncBC47TRXEZUKBBW6E6LZQKGQESMJZIQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEFD193EFD
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 13:38:51 +0100 (CET)
Received: by mail-ed1-x53e.google.com with SMTP id b7sf4943702edz.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 05:38:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585226331; cv=pass;
        d=google.com; s=arc-20160816;
        b=TknHZLQ7C6f4M6TcmqYP1vj6pyDxZX5LNiBbJT7ksSeWa2s6MQ+aU3EWWrJeSXGCnn
         6BMmGQUUMLTpTTEN7QrPwqjDSCXtQc4o4AScWKOCPzZZMQTufAg9eFfA69h1A8j1YpED
         IZ++bN5kpFxe+vd6AJWoO9S8H7YxyLwt8qvgRBeAVfHFbSK1yvxv1qgq4g65+UmNCtAa
         NVRuXXfPoHyBWcmRsh53Q0cthKPPkOJmxeDxERXAZBxnDK0DNNBhY0mqnxwSuBWVsiPh
         8+K9HCdPtyVNW5Zw1YVHKbGvxW2Nbx3w43M6RrEX7kMPEaW9C9zW+fd4naQ+kYIsq8WF
         nhAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject:references
         :mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=yTAowVQBfXYBkw9S/FBKy6IpXMinKfvcy/TFA8A0tbk=;
        b=YGdVqdPYjeC0KQ9Xk5bx1yyixEQjO8MKWDmBm6d/1pZBTXAGJ55jQZT3gTwJHqyEdw
         5p+IsR+7csysN3hGW8yInrL2Mk6/0VjX9bbzw7wSFRQUXNzRN9gSs7lo54E2+oHmyW6D
         283s4UC7clDszNfecZCoMXp/BVmAmXyJnNDwFXw6knL7vRuE6DsdLKO1Hrvvo2enAhb9
         CuFiWyDCn4+TN7kJkWHvAgly+DJy7SF7j2Zykwpkf139W0TIExqCZZi+tqF9INZDLArp
         +yoFm8n0XKLvxBErM2Hu3JGaRipfeDWn2JdKvEeiIqWc3D+7AtT72OqPMt2H9hetIsY9
         ksYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="cz8v/be9";
       spf=pass (google.com: domain of 3wqj8xgckeysr396qt8v33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--courbet.bounces.google.com designates 2a00:1450:4864:20::34a as permitted sender) smtp.mailfrom=3WqJ8XgcKEYsr396qt8v33v0t.r31r0p2v-q9x08-0x29Cv33v0tv63947.r31@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yTAowVQBfXYBkw9S/FBKy6IpXMinKfvcy/TFA8A0tbk=;
        b=OK1wnIIoygloeY3r6X5Edw3E/nOmgWx6uBlcIxQtuGW5JVvXk9YeUZCs0zcv82o8aw
         yUiWk7yQr1sSz8MapEkB5DbHmahYjLaDWXg85f6n708bv1UypWZx8N/spYzzQniggjqD
         afhbYNRuwgKTpTg1Y79oAM79f19C220VVWerGlDUzUx0NcJHdjUTOPvwi46P6eTnOVx7
         GddnGrBiYbRfOfCqoAxuiXWSOgygIjXvAl6EFBl10jRY63U5QhUn3vfNHxPtowkO5puQ
         QjsTCN76CgEbfw5NVQl34ftN+tlilOg+CVpTVmf7KS1EzngXrCSUrDXZ1mJqs5NV4hqF
         hhVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yTAowVQBfXYBkw9S/FBKy6IpXMinKfvcy/TFA8A0tbk=;
        b=K/ZhQwH+vvxOHAdRRHCkoxnzjalH5Oe8e3FEH0yYLS1FXvzqsNxGKSweAPRTBFa0j8
         PJ3JSIekRD/uruu2MObSGtSEmKR2qVVl+YC9v2kiBwmy1M1SR01vbJU87QqCGC0Oehev
         JlA/PFhfcoEnOzbY/4urbSgYnYst8MhmHhLr7DZK4xN32h4Q0G5CGlpQDzz8MnaIFGYL
         4XvOaIdjmRuBbAuyLb7Qik613y5r+X0MmmldkmRZQfRl5qHfn0ml/AWD4mhzAU8RPSc6
         XoNUybelb7aExm3S1JL51RoHI+AiGedP6//zq6/IE0VRTDk/TvDBl1QiYgipc9bvVwVf
         zcFg==
X-Gm-Message-State: ANhLgQ19rrmDN685gvmQ1pb6VKmY532gY54jTb7tuQPORUgj7hoPC/0y
	QPSeyFQIxUW22OOZQCGZb/E=
X-Google-Smtp-Source: ADFU+vuoppnuuoi52V3GXfjhkreZZldgO0y0/Am3hSDUkaClyipG9J4GU3z95MH9TBKkkmpoY833YA==
X-Received: by 2002:a17:906:958c:: with SMTP id r12mr4891063ejx.36.1585226331103;
        Thu, 26 Mar 2020 05:38:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:c049:: with SMTP id u9ls4231739edd.7.gmail; Thu, 26 Mar
 2020 05:38:50 -0700 (PDT)
X-Received: by 2002:a05:6402:2030:: with SMTP id ay16mr7994988edb.226.1585226330560;
        Thu, 26 Mar 2020 05:38:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585226330; cv=none;
        d=google.com; s=arc-20160816;
        b=ejunEkOOgjNAZVP/7foA/Wq7oqSfg+hb+m24/PZ25vGQPd/lYEYvgdjAUcPZ+cgToK
         VGMJW+Vos6+P1hZC+2gnDHsUpX8m3QKnE2D5h6x/i/rnQSrJUO7eixzPIMUqSgKmLCqJ
         fdIArBQ9/mQNtODUrG2+8OrwxfTfAvlf0oinyOKmeNlN2kTS3Ovja8AblGf0rDqKJSii
         O9EYlodCBWDVssyobB50aZhj6906sG8RxZ7+fwgI4wKSwPwROzYg0z3Sckk+FPBmYmQj
         dy/Y+a8GL43Fvi/tl7SK74+3LatHahDjarPGuowOmn7Mj6yn8+cM6hFstPfq7xIPH9wA
         K9Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:references:mime-version:message-id:in-reply-to:date
         :dkim-signature;
        bh=8yqBrfdJM+UOOeS4se8770yNMpiUTGHQoT5T8DP4qB8=;
        b=f4grKO9+1yLExPo2VZ7irLWAZr8XDZ0j7HrKdM557bFTeAf38kO8wg15jbC0u0Ww+8
         H3bvVcrTzxlqLl8rPJnvR5dw7M2u6ElsmxHRIXqc6tTQpycFCF+H3etweOBeipAVlsCi
         NWFq382w7YPwMLLWTa5n9S8xbqt1pV0slwGq/lK9QuyLvUcN7nNo775ReNlavB9KfOvx
         A90Q5jfhMWiR4kg9cycXTRit1UxnxjOITMH+Fw+CpU7IgwK8ysq6wjnu99bJXeoKvzu8
         YfthB1Ei79O+Dca8B9SRpRfoYQLmlIZ7xzqPzbaNFJ0fAFrM3LF/9jtSwQP9DIoGCiha
         okDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="cz8v/be9";
       spf=pass (google.com: domain of 3wqj8xgckeysr396qt8v33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--courbet.bounces.google.com designates 2a00:1450:4864:20::34a as permitted sender) smtp.mailfrom=3WqJ8XgcKEYsr396qt8v33v0t.r31r0p2v-q9x08-0x29Cv33v0tv63947.r31@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x34a.google.com (mail-wm1-x34a.google.com. [2a00:1450:4864:20::34a])
        by gmr-mx.google.com with ESMTPS id w13si99301edv.2.2020.03.26.05.38.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 05:38:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wqj8xgckeysr396qt8v33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--courbet.bounces.google.com designates 2a00:1450:4864:20::34a as permitted sender) client-ip=2a00:1450:4864:20::34a;
Received: by mail-wm1-x34a.google.com with SMTP id s15so2115846wmc.0
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 05:38:50 -0700 (PDT)
X-Received: by 2002:adf:a2d8:: with SMTP id t24mr9044184wra.366.1585226330006;
 Thu, 26 Mar 2020 05:38:50 -0700 (PDT)
Date: Thu, 26 Mar 2020 13:38:39 +0100
In-Reply-To: <20200323114207.222412-1-courbet@google.com>
Message-Id: <20200326123841.134068-1-courbet@google.com>
Mime-Version: 1.0
References: <20200323114207.222412-1-courbet@google.com>
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH]     x86: Alias memset to __builtin_memset.
From: "'Clement Courbet' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Joe Perches <joe@perches.com>, 
	Bernd Petrovitsch <bernd@petrovitsch.priv.at>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, 
	Segher Boessenkool <segher@kernel.crashing.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Allison Randal <allison@lohutok.net>, 
	Clement Courbet <courbet@google.com>, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: courbet@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="cz8v/be9";       spf=pass
 (google.com: domain of 3wqj8xgckeysr396qt8v33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--courbet.bounces.google.com
 designates 2a00:1450:4864:20::34a as permitted sender) smtp.mailfrom=3WqJ8XgcKEYsr396qt8v33v0t.r31r0p2v-q9x08-0x29Cv33v0tv63947.r31@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Clement Courbet <courbet@google.com>
Reply-To: Clement Courbet <courbet@google.com>
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

I discussed with the original authors who added freestanding to our
build. It turns out that it was added globally but this was just to
to workaround powerpc not compiling under clang, but they felt the
fix was appropriate globally.

Now Nick has dug up https://lkml.org/lkml/2019/8/29/1300, which
advises against freestanding. Also, I've did some research and
discovered that the original reason for using freestanding for
powerpc has been fixed here:
https://lore.kernel.org/linuxppc-dev/20191119045712.39633-3-natechancellor@gmail.com/

I'm going to remove -ffreestanding from downstream, so we don't really need
this anymore, sorry for waisting people's time.

I wonder if the freestanding fix from the aforementioned patch is really needed
though. I think that clang is actually right to point out the issue.
I don't see any reason why setjmp()/longjmp() are declared as taking longs
rather than ints. The implementation looks like it only ever propagates the
value (in longjmp) or sets it to 1 (in setjmp), and we only ever call longjmp
with integer parameters. But I'm not a PowerPC expert, so I might
be misreading the code.


So it seems that we could just remove freestanding altogether and rewrite the
code to:

diff --git a/arch/powerpc/include/asm/setjmp.h b/arch/powerpc/include/asm/setjmp.h
index 279d03a1eec6..7941ae68fe21 100644
--- a/arch/powerpc/include/asm/setjmp.h
+++ b/arch/powerpc/include/asm/setjmp.h
@@ -12,7 +12,9 @@

 #define JMP_BUF_LEN    23
-extern long setjmp(long *);
-extern void longjmp(long *, long);
+typedef long * jmp_buf;
+
+extern int setjmp(jmp_buf);
+extern void longjmp(jmp_buf, int);

I'm happy to send a patch for this, and get rid of more -ffreestanding.
Opinions ?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326123841.134068-1-courbet%40google.com.
