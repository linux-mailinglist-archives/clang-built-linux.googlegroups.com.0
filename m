Return-Path: <clang-built-linux+bncBCHKDT7IXMKBB3OJVX6QKGQEDB4XIZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9702AE752
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 05:13:34 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id 8sf426923ota.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 20:13:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gks1O0PQkrTA+DorPGELhitEPv8h8XujUPNwIn53UZU=;
        b=i3M1UPEGtf3Jc5hWeL/sEtcRrcGUpoHWs5xWdDhC0NK3+UYK0msLrukV51i9gOxQ/c
         yrdJkBXEbFf4ilCV+4v8yEdIblTf5K3I4+JJa4swzVPSCo+6/BRPPBjHN3XOLznicol9
         gVy6YFt+FlCfCK/UmwjxJL/MkRft8LU51zgfSGW9rgN/r1Qc5MsnvmFqcWncbe5Pdob6
         sEDid9IL/foNdjdf0j0QmOjaMNFcBHRD4twjQg6P3qO16XYZTPCvNFNmMkrOL07uCIyT
         6RS1OF4HVn3DICXV4EyPOIURTAebRwDdWlyGJsfjf/MeQpxjJYjWo4EMoTlv7ZSH395y
         /P4g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gks1O0PQkrTA+DorPGELhitEPv8h8XujUPNwIn53UZU=;
        b=NyzWpkYN7F0PpDOHAl5VYcAmDBun29y184qYTgEoJY/LvLm2uB0jKI4oaFbUn/F8JI
         vwS6Zmn9Etwbnu3mzM+c3fQokxZFkj3Ewhr50YKryj+Q4CaTEtsFIwH5JEdCILgKs1r9
         65t5j0EzYOTnT2DQCMsJ7lC9fJWKXFoWLOWRsHtULgo0w+QdDqf9ZFJlGuoLgirYiFzJ
         Vh8IrENVVy8ivIr3eEJKKJ9hPbGVV2FfVIvqgtC0WNJBcU7IgtEs4aE9EjdpEa//OqCp
         BPkgvmdDWvhQgOXfBSqBhDj+31zOpBWBgHJKW4W57pR2iUjMk5G+elWp4FgT2KktErNh
         pviQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gks1O0PQkrTA+DorPGELhitEPv8h8XujUPNwIn53UZU=;
        b=rAmbk4Ls0JY+hmRfjK0U0NhLzsXflJlq+11/Lk0phitCek91UCqsdoltZQzGx0oFvv
         jkSAyjJoUwUuP8ebnp6YFFvntp5fgaNPF/VqV48pHhhJZD4kHCmSb+JHmzZYhuPTKpOV
         3fG4rz9PtZDCgc0yqid9MQswXETCAAvJiEOdJYoVqGuhogWGhL1Qcmm/8xhOuQqYeFAI
         k6FfljDtgX89Hjk/ErlMz1Q3ZAETkajidgz5W0RPogmah7pd1D4kR9X8so4f/kat3woc
         U8Hs5M2ICllWDYwuQderGGRTSwI3A/QcJZQHqavQDVrbFeKw+BMkrEOInPZKNPZgRgaY
         +jSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Kr4xibtSPIAu3fAD/Dx0TavL+HIDxxnwXk9sV0QcpfhEiaMeJ
	fzThMFqT0bOMGbrDaIeZj0U=
X-Google-Smtp-Source: ABdhPJw6V77hyDTFkuDHW1BsTuhUO1eT6Xg/3AvddvArQlyMpbNNN+OJV4VaT+6Tm61ZN17CC4MqHg==
X-Received: by 2002:a05:6830:23b6:: with SMTP id m22mr16943499ots.292.1605068013592;
        Tue, 10 Nov 2020 20:13:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:a843:: with SMTP id r64ls3610569oie.2.gmail; Tue, 10 Nov
 2020 20:13:33 -0800 (PST)
X-Received: by 2002:aca:5556:: with SMTP id j83mr977699oib.87.1605068013065;
        Tue, 10 Nov 2020 20:13:33 -0800 (PST)
Date: Tue, 10 Nov 2020 20:13:32 -0800 (PST)
From: Itaru Kitayama <itaru.kitayama@gmail.com>
To: Clang Built Linux <clang-built-linux@googlegroups.com>
Message-Id: <abbda77f-633f-4564-93ee-ba33fee8ee47n@googlegroups.com>
Subject: userspace
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_206_132908606.1605068012470"
X-Original-Sender: itaru.kitayama@gmail.com
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

------=_Part_206_132908606.1605068012470
Content-Type: multipart/alternative; 
	boundary="----=_Part_207_575700757.1605068012470"

------=_Part_207_575700757.1605068012470
Content-Type: text/plain; charset="UTF-8"

Can someone tell me the selection criteria?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/abbda77f-633f-4564-93ee-ba33fee8ee47n%40googlegroups.com.

------=_Part_207_575700757.1605068012470
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Can someone tell me the selection criteria?

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/abbda77f-633f-4564-93ee-ba33fee8ee47n%40google=
groups.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.co=
m/d/msgid/clang-built-linux/abbda77f-633f-4564-93ee-ba33fee8ee47n%40googleg=
roups.com</a>.<br />

------=_Part_207_575700757.1605068012470--

------=_Part_206_132908606.1605068012470--
