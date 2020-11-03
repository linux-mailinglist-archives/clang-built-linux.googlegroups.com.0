Return-Path: <clang-built-linux+bncBDQ2R56ST4HRB755Q76QKGQESCEYQ2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id EB23B2A5A4A
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Nov 2020 23:51:44 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id 88sf548377otd.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 14:51:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604443904; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lv/0WRLEz1tIfT6O/cGeyd8daGCOlJxQfDwZ/DTjcybElgT3G8SC9VO1FpYeyxCwBv
         yHJbj45vscFigOOJqa2kRwkbMuMc92jxEDzAKGGIUiktb5Y+gRGbevBwlOV78PGZn6fX
         ZgnCEERK8sUw0EKM2K/UqhYkdAkPW4JIa2aSKqbQE4cOpTb9J5Wasf9pm9T8wnzSkwF6
         aWmz6+jYpiLiVZDVDxWockqgfCcCO19ijpHlna0mx1qZLbSyB1cmrFmiScoXIcagQ+DK
         y+RRyMF5yvbK3p2ciQlMoyrInhRyYxWW2Gs6oorerlnAP4yXwj2ebIQ/O3kAaPtvLvY5
         +U9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=62YlhV8eM5I6f3biXVMVJqa30LKiO124rpEOgNJQQU0=;
        b=dV6MoICVZCJOwM8MLIPBt6tyND2MFnNTkqxSzVyhZqE4jgR1gLELhqgLIAJ9bv5VUc
         /IpSkorDcEJNpFDrWivGWwcIVDIUYG50j6UNTGaNDzlR0hpLsdX3bUpTYzwnZQAcQAb0
         1GTCS82DmNOj6AE1xqye+PbNTW+VqHxXjrBalxD99BflB8jgKqFZlzwL6rvelS7w33Be
         n64G7eMTolQlrtFT2SetRnfAd8kSs2u2rIs4CzJe7ktnb7rju54Jrcw+m8/gVuFcGOZP
         HK45/NgAiax+qz7r/Wm9NRegz35JomSkz3P38gFhf2TOOdIQ6c4EvVpAUe/sE0S8F8nW
         RlxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GuCFkMlj;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=62YlhV8eM5I6f3biXVMVJqa30LKiO124rpEOgNJQQU0=;
        b=tXyfXhVOvhJL8oOBT12zGVPosLIq2bBFbFxG5xuxELtdvelZBR5IT2QSV1IZM9wxKF
         bILZQw9Nv+xgLXb0CBn/Q5fHIxkEu9t4lQlxUtgiskYIK+rQisT9gDgC+YfWlHofbYCn
         cBMrR8aQvQFj4kBTgBCMKYaLUPycdNs0u6lmSgToUlNv7qX0HBinjSKAIkOvLEDGPz9Z
         VDyTA+8oLt4r+HVhaU4/8S/HSBE1cAnjd9Giw3Lu0MN8VfWtRakQDmyDR8flSb0Gw31t
         eZWP+/KLioPEl4PhCVpjgq1PraQq60RGyc+Y204vosuEoS0oPifR5kTKsvUo53G7xlRa
         FCMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=62YlhV8eM5I6f3biXVMVJqa30LKiO124rpEOgNJQQU0=;
        b=ftDHBnPRwtfbNHcPKpDYn0BwG1Kg30YlriKQiYZLU4Az9G8nVUWFdlUr27T9MEOLU5
         Z9xiwvQppgGIfk9mAXr4kBv99tgZYOb59EtZMjkDBhRQh/X/yaJ0F6B55SsqTq4CEPqE
         MigruavKS3ITuQ4yjDYVAfIAnwuhQ+uwZ0DIUaI1ETJuGW8qfxoodgCMSjGr4qni+Y9l
         k2yGFBkz52K8kamE2aHkYgVhKXcHPObo6E3QOP1XtOF1hi+0kKs6eNZqFF6z9nuKX2Uo
         QMbWrAQg5DWqpB3j5H1maN8206Jse+kQmoVwhVIjBzamvN6FfJiTUPc2nW8gzaNrMozR
         l83w==
X-Gm-Message-State: AOAM532Thq3OYi7oy42QkMVHfe6mDOo4lXmP6TCz2iWwnVugjw9h27wo
	CwSjIcSVOQRK4EshzyxkNc4=
X-Google-Smtp-Source: ABdhPJy/v1LdHTOYrzBA/a/I9H8Ccj6kfmb5WC51y8tuZqhFqy5/VT5wLhEe0sW1eO3aVmyBCTviBA==
X-Received: by 2002:a05:6808:29a:: with SMTP id z26mr896734oic.27.1604443903880;
        Tue, 03 Nov 2020 14:51:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e10:: with SMTP id s16ls3143otr.6.gmail; Tue, 03
 Nov 2020 14:51:43 -0800 (PST)
X-Received: by 2002:a05:6830:1002:: with SMTP id a2mr93578otp.316.1604443903496;
        Tue, 03 Nov 2020 14:51:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604443903; cv=none;
        d=google.com; s=arc-20160816;
        b=XCGyEMHPF8DhSf3dgwRvKxUDLqN2yryWQ/VDKiSKBb0UsNbCIxhj5KnJxmu4MWU7xl
         Ae4OwCV13ahQ/x8rbbDntqkE1+1e0hD18ipsuzYZeLlelzJAusaVU1iwCXLrIof0e5OP
         eWRIcRLA5vCppHSP1qPYUadwrZMWPcBAx3E46oNLDJ32t8zHGZjMM20tvsLcTeGRDu0E
         /MxW9/KzRhzJOR1xGnCe5+yAueaFh26p4ULBBkG5tPDwyjDm7RhxQfbhqrzWJK6spdPV
         sCrVwWr3RD95/ug2jYSK2aIsI6LXb4RVxNbYptMx8s1twVG4/1PDdQ3hHE4q1ePK7pb1
         ifkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=gK/feRegQ+d5xTNbs0NFwHZKPmlFdKSME1I8iKiC9/c=;
        b=EkM3Mzz+iLBqNfzAg36kIwf26GM9wvWOwbWzSUdz+DKW9ZsRDCLyZGrMnfjyG6mgZ7
         kS2tUlws3lBbXobhCumzkICkMZqnw+d8HTWEfSu0+7BsmDL28wS1PIoIY6V9h2MxEDmV
         Wkrol8qlMKmuaYfQxnrqjh+J1DEHsyCHtY0AXndAkJczQ/Rh4gFSrBBjFNxTzPq8l1Za
         taSCkFY9LrMO43gpCBx7Ke7RwAzn3LDy7Uow/wZdEdTOqaamLWIPG32wzNrJmydhgQN0
         BGm+aUQf1bDrUB/2Md44DUr906pkmh2zud8WcIUFsYacBcXJ6z+Nocp48BfoXjB5uB2P
         B+MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GuCFkMlj;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id d22si14354ooj.1.2020.11.03.14.51.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 14:51:43 -0800 (PST)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id 62so7591609pgg.12
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 14:51:43 -0800 (PST)
X-Received: by 2002:a63:4c5b:: with SMTP id m27mr19422650pgl.211.1604443902894;
 Tue, 03 Nov 2020 14:51:42 -0800 (PST)
MIME-Version: 1.0
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 3 Nov 2020 14:51:32 -0800
Message-ID: <CA+SOCLJMyUZ8c0e5xkvm+r0pMxBoUxmQRaoasKOS2T28Z10Ziw@mail.gmail.com>
Subject: Patches for building kernel 5.4 with LLVM's integrated assembler
To: "# 3.4.x" <stable@vger.kernel.org>, Greg KH <gregkh@linuxfoundation.org>, 
	Sasha Levin <sashal@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Dmitry Golovin <dima@golovin.in>, Borislav Petkov <bp@suse.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, mbenes@suse.cz, 
	Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>
Content-Type: multipart/alternative; boundary="000000000000e566e305b33bb48f"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GuCFkMlj;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::52a
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

--000000000000e566e305b33bb48f
Content-Type: text/plain; charset="UTF-8"

Dear Stable kernel maintainers,

Please consider cherry picking the following commits (ordered by commit
time) ino linux-5.4.y.

ffedeeb780dc linkage: Introduce new macros for assembler symbols

35e61c77ef38 arm64: asm: Add new-style position independent function
annotations

3ac0f4526dfb arm64: lib: Use modern annotations for assembly functions

ec9d78070de9 arm64: Change .weak to SYM_FUNC_START_WEAK_PI for
arch/arm64/lib/mem*.S

The first three are required to apply the last patch. This would unblock
Chrome OS to build with LLVM's integrated assembler (Please see
http://crbug.com/1143847 for details).

Thanks,
Jian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLJMyUZ8c0e5xkvm%2Br0pMxBoUxmQRaoasKOS2T28Z10Ziw%40mail.gmail.com.

--000000000000e566e305b33bb48f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear Stable kernel maintainers,<div><br><div>Please consid=
er cherry picking the following commits (ordered by commit time) ino=C2=A0l=
inux-5.4.y.</div><div><br><div>ffedeeb780dc linkage: Introduce new macros f=
or assembler symbols<br></div><div><br></div><div>35e61c77ef38 arm64: asm: =
Add new-style position independent function annotations<br></div><div><br><=
/div><div>3ac0f4526dfb arm64: lib: Use modern annotations for assembly func=
tions<br></div><div><br></div><div>ec9d78070de9 arm64: Change .weak to SYM_=
FUNC_START_WEAK_PI for arch/arm64/lib/mem*.S<br></div></div><div><br></div>=
<div>The first three are required to apply the last patch. This would unblo=
ck Chrome OS to build with LLVM&#39;s integrated assembler (Please see <a h=
ref=3D"http://crbug.com/1143847">http://crbug.com/1143847</a> for details).=
=C2=A0<br></div></div><div><br></div><div>Thanks,</div><div>Jian</div></div=
>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BSOCLJMyUZ8c0e5xkvm%2Br0pMxBoUxmQRaoasKOS2=
T28Z10Ziw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLJMyUZ8c0e5xkvm%2Br0pMx=
BoUxmQRaoasKOS2T28Z10Ziw%40mail.gmail.com</a>.<br />

--000000000000e566e305b33bb48f--
