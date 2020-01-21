Return-Path: <clang-built-linux+bncBCUY5FXDWACRBQUSTHYQKGQE44EBI2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 360491434CB
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 01:43:47 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id t3sf521849wrm.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 16:43:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579567426; cv=pass;
        d=google.com; s=arc-20160816;
        b=q+wWxlXjYAw0CqTFVcqdZOHiLMGCls6ncMfK+sS894QCSXeD/+BbKiXuEAI53oEZ/d
         BOGsFkQhKuM+ErbUxBNX9HwNPI5m+NggcuPl5UMTtuKxNAHy8CGRHH3amEgxCOZuDWSk
         nA4DPIu3SC3uJeeJqwJfoc1d2jtw0LQuXYIQbJfH8fSNuo0FjRzuHdIU0XncRcSWXl5M
         NEydawOkJriy9WkrJNhP+fWonyPmSpT6w2yNS1bWNekvSqdZ0jH25froqaNtXFHaoAmk
         BGPuH0Sd0Zd0haigqRI29mEHqf1KdeESKYTl0Z1f7kLnTklE4PMS/upFNWTJO8fD+kfR
         CnlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=Y6UGhQ/Hs3r0ZBjVKiHM6C/mJahAMSE0vXKy6ux4pLs=;
        b=BjiItLlfG9FJqsCRn7nbLk5U3ef9gXKmMKJPNmrGP2Wp2EPDS7SebMuWi50LxKquDA
         3JzZDz/vZ00V3sjRfVcYn6Zvz+hvf+MFFaC2CmQvcUjrqQ3XRZcC2Qebrdj+BRCtEtr1
         1xVdAZclvC3KUHRJaIihirBYs6JS7H+gUjksfLOLpe58otZtQW/PiH91CagFeFwWjwvE
         x+DsK+UJ1zjJXck8WmQF6X5SYD8M0A5F4EE5QYLXZNvAMOjJDASND4D1uXxXFj1zPIdI
         kZs/sEjCx7UAVFP1XogWaZr6TAEg0Y09MrVD+Qp2kussGJzgIT1eDyFXCPa0q51Nookl
         XMZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dZ1awvxM;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y6UGhQ/Hs3r0ZBjVKiHM6C/mJahAMSE0vXKy6ux4pLs=;
        b=AXqlkKd0SvGLe4As7PCBRRq1CX3mNPWGggZBQ4IXrUD9bJA3EnBbewDuqkuhV5z2qv
         lZm0Xm3Mz0C/g0zGV0wnjS4bA/A9y01prqy1BWDfqJK8TnENGg+6AxuSfT6sjDiQUXQW
         sqb8bORa6xTFKzAcmOUft5jyOiC3MrPkf07qZF7p6qYu4DSxCp4/FUvSdRM1i9gTM3VV
         N6CqHbS6DWpYmFckZjRRbAxk5q+pxirLGzZZCspu4PKCXV4bzbkzMtZ8AOM8GS/AFWLg
         kgi3/jQ52bSod/9VglDkwkwACg39zaQfyrWf1U0aB+e14e+JNNkCMSNevx1k4H/uCMAD
         M7eQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y6UGhQ/Hs3r0ZBjVKiHM6C/mJahAMSE0vXKy6ux4pLs=;
        b=Ox4OIIaFHqLYcris6o9cyIsZaxy7EwuEL+M1KB90x6sm+UiECwpzXgARaKJcF6QzHl
         TVfRhf0T0F3bp4HgQpIdFMthQjTH+m7T9yAYB7kT8X3g3d+xmYNiDT+R383/ZP0Zs5kJ
         nWtCrCdettY3bI0QvaDeSXskxjzPz4PVdMj70GK3r6nCRVndXejRcvyT2XYg0u3yihV7
         5QBgfo4qNyeuwjlsDqbKt46HorHk3iWT+PK18kfriDizNgPI35zLp5p4RzZbelBnPG6p
         +4EHgHxC7XIR5SJZMkhEbm7h1E/NMGHOwuMNUn5CxRwZwPU3/Zn6H6pvgq73I8J/MAhe
         VgWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Y6UGhQ/Hs3r0ZBjVKiHM6C/mJahAMSE0vXKy6ux4pLs=;
        b=P6EL8ZabrIqtbo8YWdAPdtuj6gCljxiKyv441KhV3pD1bg9qCjKVcdaF4gBheiMqPC
         wFnE623AvK8gTMkhbPLKeYCtkLPEukuAegouNLiUXWR4pO2hjTZ47KI00Twb+4G0oXXZ
         tiArujN2QBO3VAzoILKKyZtPrIe79DSrQ4/00CnzJpEFlc6CU193yj1ob42i3Dw3PPlU
         e2OrM2U6iMGnvx0LrzUqw0vOhL+xGQ0MOiQls9jcQCp5+fNeChcy8JAzhG6n9OG9FJQb
         BsXjWVuSVGmDJEXUsGpkH3IU7lv2HWiBFtVbH03DQTCBoILw1/pLxEMzm8f2K1tF6e8I
         gwrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWO89O2QL1emfS4sHZTtFT5Ves5exbX4F5UtU5Nyw/kW+hEVAZI
	//LnaqV6Q4D6sHdB2ay2Lco=
X-Google-Smtp-Source: APXvYqyhSBSeXLrmrWYVZSPpWki8hdY/2y4Ap/Eu6/BInSzMctv0iyoxCnaM/Uqn1wRgJ+mehPhwnw==
X-Received: by 2002:adf:e3d0:: with SMTP id k16mr2026924wrm.241.1579567426838;
        Mon, 20 Jan 2020 16:43:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c76b:: with SMTP id x11ls329316wmk.3.gmail; Mon, 20 Jan
 2020 16:43:46 -0800 (PST)
X-Received: by 2002:a7b:cf2d:: with SMTP id m13mr1394338wmg.163.1579567426210;
        Mon, 20 Jan 2020 16:43:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579567426; cv=none;
        d=google.com; s=arc-20160816;
        b=klWTVUwNO6GfK2f51nwmTiqH24RBttOBk1T4x2VtoGn5h1DGmgzqwfaxf95P6EFL1q
         HVougw8v+8XUJRxNwSQOO8m+TMIWtoctSymOyf5gnniRDlXHXHQp1mvUk4oZxuT5vqUQ
         9xJ85NdW72cqpaWYEhFmLBo7e2v2uzWB8GuyPUfInhWKo14MsXWkFereD+nFKttvlE2x
         9D3rgMOwzMsJmH3ERFEnGdl0so+5UWL30eATKBaC6CKW6vD4looK5st7emfKfP7s3sj6
         Gtkl4NJ9E7PDXGPEvkpPz84OggO/1ZANYmsLJey6fRvBkD2PMUBa1vyTMIXfe5vywgIM
         vVCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=MkxVpkj1L/adI2wMhsZ5ahtdW6aCQqf2r6PjbRYhDUc=;
        b=ie2pwBStQGgzz+HKkP1HxtekVE912A4OhETaI5BjgQoFgqrx1O1UR5YT5lmgLFUfFe
         bQSdnwzpU4UcbTnpmnrY7dFzDI2VBnmbdjECqjVaKDq8PtknWGzsFgJXDyyIyDaqkhZC
         +qmypS4X5K3UZ1P7Sn4N1hSUYsiJNVxFfLpTalDMd/5ddsDmFFyhQMib4fnG7YPb38Aw
         XWobum+ONYnCrj8uTLBy4wxbFD/1lFL4piLiS9vrccKeE9rdm8bZBiKHQXQ4rXv+cviQ
         LzMI+4tYhVjVtDqvcuCHVtY+y8VtEDPfIvmGT56zxzDyUuQ1VcCEK74GDdv9VFWRb0mD
         vV7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dZ1awvxM;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id w11si33394wmk.0.2020.01.20.16.43.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jan 2020 16:43:46 -0800 (PST)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id z22so938890ljg.1
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jan 2020 16:43:46 -0800 (PST)
X-Received: by 2002:a2e:8016:: with SMTP id j22mr14020495ljg.24.1579567425227;
 Mon, 20 Jan 2020 16:43:45 -0800 (PST)
MIME-Version: 1.0
References: <157952560001.1683545.16757917515390545122.stgit@toke.dk> <CAEf4BzYNp81_bOFSEZR=AcruC2ms76fCWQGit+=2QZrFAXpGqg@mail.gmail.com>
In-Reply-To: <CAEf4BzYNp81_bOFSEZR=AcruC2ms76fCWQGit+=2QZrFAXpGqg@mail.gmail.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Mon, 20 Jan 2020 16:43:33 -0800
Message-ID: <CAADnVQLji59JiB5MF0ct5i2q_M_4hq7k-F9pgKBAcxGYQjVDNQ@mail.gmail.com>
Subject: Re: [PATCH bpf-next v5 00/11] tools: Use consistent libbpf include
 paths everywhere
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>, 
	Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
	Jesper Dangaard Brouer <brouer@redhat.com>, John Fastabend <john.fastabend@gmail.com>, 
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>, 
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	open list <linux-kernel@vger.kernel.org>, linux-rdma@vger.kernel.org, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dZ1awvxM;       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Jan 20, 2020 at 2:21 PM Andrii Nakryiko
<andrii.nakryiko@gmail.com> wrote:
>
> On Mon, Jan 20, 2020 at 5:08 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@re=
dhat.com> wrote:
> >
> > We are currently being somewhat inconsistent with the libbpf include pa=
ths,
> > which makes it difficult to move files from the kernel into an external
> > libbpf-using project without adjusting include paths.
> >
> > Having the bpf/ subdir of $INCLUDEDIR in the include path has never bee=
n a
> > requirement for building against libbpf before, and indeed the libbpf p=
kg-config
> > file doesn't include it. So let's make all libbpf includes across the k=
ernel
> > tree use the bpf/ prefix in their includes. Since bpftool skeleton gene=
ration
> > emits code with a libbpf include, this also ensures that those can be u=
sed in
> > existing external projects using the regular pkg-config include path.
> >
> > This turns out to be a somewhat invasive change in the number of files =
touched;
> > however, the actual changes to files are fairly trivial (most of them a=
re simply
> > made with 'sed'). The series is split to make the change for one tool s=
ubdir at
> > a time, while trying not to break the build along the way. It is struct=
ured like
> > this:
> >
> > - Patch 1-3: Trivial fixes to Makefiles for issues I discovered while c=
hanging
> >   the include paths.
> >
> > - Patch 4-8: Change the include directives to use the bpf/ prefix, and =
updates
> >   Makefiles to make sure tools/lib/ is part of the include path, but wi=
thout
> >   removing tools/lib/bpf
> >
> > - Patch 9-11: Remove tools/lib/bpf from include paths to make sure we d=
on't
> >   inadvertently re-introduce includes without the bpf/ prefix.
> >
> > Changelog:
> >
> > v5:
> >   - Combine the libbpf build rules in selftests Makefile (using Andrii'=
s
> >     suggestion for a make rule).
> >   - Re-use self-tests libbpf build for runqslower (new patch 10)
> >   - Formatting fixes
> >
> > v4:
> >   - Move runqslower error on missing BTF into make rule
> >   - Make sure we don't always force a rebuild selftests
> >   - Rebase on latest bpf-next (dropping patch 11)
> >
> > v3:
> >   - Don't add the kernel build dir to the runqslower Makefile, pass it =
in from
> >     selftests instead.
> >   - Use libbpf's 'make install_headers' in selftests instead of trying =
to
> >     generate bpf_helper_defs.h in-place (to also work on read-only file=
systems).
> >   - Use a scratch builddir for both libbpf and bpftool when building in=
 selftests.
> >   - Revert bpf_helpers.h to quoted include instead of angled include wi=
th a bpf/
> >     prefix.
> >   - Fix a few style nits from Andrii
> >
> > v2:
> >   - Do a full cleanup of libbpf includes instead of just changing the
> >     bpf_helper_defs.h include.
> >
> > ---
> >
>
> Looks good, it's a clear improvement on what we had before, thanks!
>
> It doesn't re-build bpftool when bpftool sources changes, but I think
> it was like that even before, so no need to block on that. Would be
> nice to have a follow up fixing that, though. $(wildcard
> $(BPFTOOL_DIR)/*.[ch] $(BPFTOOL_DIR)/Makefile) should do it, same as
> for libbpf.
>
> So, for the series:
>
> Acked-by: Andrii Nakryiko <andriin@fb.com>
> Tested-by: Andrii Nakryiko <andriin@fb.com>

Applied. Thanks

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAADnVQLji59JiB5MF0ct5i2q_M_4hq7k-F9pgKBAcxGYQjVDNQ%40mai=
l.gmail.com.
