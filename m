Return-Path: <clang-built-linux+bncBDY3NC743AGBBYVG27VQKGQEZKF7R6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id F2778AD278
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Sep 2019 06:21:55 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id p6sf14843222qkk.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 Sep 2019 21:21:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568002914; cv=pass;
        d=google.com; s=arc-20160816;
        b=QCmLgsStOIaIjvTV5V9IueWtnj0wtHwJ1E/592tz6Bs5uZCOpGoxAYdBpI3bMO7W8Z
         QQcPhBi/ThH72c7LGdYjfDRlbYA5OJAfrRhzcOO1H5qCSpWpEv3Q5Ox13ZNS+5fMpAGP
         cXmMwmkCjqB3azmbJQcKxeBTtG0bBuxSEITVi5Pv33d+XD5INGpWgeurnM+vY1OgT5Uj
         bDOBFIAkhqX9JGVE42MPDJ2FafN1b628dHH8ST/cUcikirrMgaO6f3UZVQzLpAS5Kv7r
         5Qu37t6xWHdtFhvAcSOaSzhbZrbi9yGZQGRGsKAuL0CmRULZ1RG00nDmy10iRhjHzPmI
         3+8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:date:cc:to
         :from:subject:message-id:sender:dkim-signature;
        bh=qlhilgo6vLCGLvyhggVm1DgnxNYuQKrbqYQ9pW25qLg=;
        b=I4A3IfhWjQxEcmDB33NNMFd4VYhWohyLWN4J8OAtK5e0nHrvP6yqAatKpLf7H2ChSv
         nZ5ImtxIpaFSkxtSWNmCVZfmcv1esvJ5fwKom/7taXfK3PmjV367ECTnpsPckMHIEBzq
         cwUXwRnJjyx3C5JE+sPayZ5cewPxGtMvOarP31D7+7RbGkd6at6ZM8fbpCdHadwQLFao
         qyxFGJF0JaooCploUZVkic8icqDOIByHB4R5XG8WJCePmhpA/eDEM5RbZgDfjmuAQzE7
         YbSvwtwF+yUk4Sjw/Xa4gF5L8dx9haU7399ursaPqWNMYxmeRg7hDyZ111/05CqK/q1l
         ihOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.63 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qlhilgo6vLCGLvyhggVm1DgnxNYuQKrbqYQ9pW25qLg=;
        b=ivgLbO1+FJbPBU14/uQc4zDchRCOrQ8iSteyD/iWnn9LQ91SwKLIufA3UI9gz9DF4z
         lzpHA67GaqIrtyx+nOVmIU66Gj8zdvaZo8Ipy1sJE36hiFdkelkzXqbIWgTQ4ozGZ80m
         or9MSE0Uj/f3DctieYeKnzW/BeiMu1vaZmXP21PQd3sZHYAL1gwZ7oRktignM5kIawB2
         Zdh0KdP75nfrewt2CitzxoC5akeHd2RjvjJy2NhAqxzdYI9yRo9GWhYi5Lwr/V7VaFA6
         sdJ350bd/n6pOXDOCxjK71bxlPfSYoPAhIlLhl3o2+xdFAGCskPNQYAS6u9N4nTcorHs
         HxXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qlhilgo6vLCGLvyhggVm1DgnxNYuQKrbqYQ9pW25qLg=;
        b=gC5tVmobTpYd4uUZ8IKqiwnyrquBhdJZPF1h00LOWWUDYHEvtfe9EBf4gnH/I+Ntg+
         qNcPVdn6S4qaWR8K/wpIcZLvkIELyYAWBL8Coe2G54MQE5iST9B5fdwLSgIoMaz1e4BD
         NVeOaVmipnkEiPhVQVEE/dIS1ThkBnNZfhQdOiem4aWNNQzmZeKkhLYOKucXAr6PCR7O
         3SX0qaON+E6xBvgASMb9yVFAzvWeD9DzaWTGXcpjCmi2u7vgdqwOdqfYUqAohsw6mibu
         U/5c3WaA7QwSlj6mfOQLSBlkCSsHaMKDZ4vnjZb6I2avlmx/OMd+J5nwQqJjGrqKRCZr
         MFLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWeXh5WXyiXL7+Nv+7/WSMbhU6MHY1KkPD0BtgCd6804dYhnsbx
	v6NvMY2gG54kz6f5S/ydC0I=
X-Google-Smtp-Source: APXvYqw47HGNcTOh84a2DV3lL6nErnJjdfHj3UBSnXVRGNDiKNu22+5avp5T9hsPjCnv04XGP7g0Sw==
X-Received: by 2002:a05:620a:302:: with SMTP id s2mr21917863qkm.497.1568002914347;
        Sun, 08 Sep 2019 21:21:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3136:: with SMTP id g51ls1824922qtb.4.gmail; Sun, 08 Sep
 2019 21:21:53 -0700 (PDT)
X-Received: by 2002:ac8:444d:: with SMTP id m13mr21422829qtn.228.1568002913928;
        Sun, 08 Sep 2019 21:21:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568002913; cv=none;
        d=google.com; s=arc-20160816;
        b=fJmY7YzGO2WBYm3/PVgj2MUaWqfnn/5pjb2EHYo7NWvxcrEYli/4FcGfbbWWekkE+s
         PAHPoRsaV8QiKXsoCn3gMn6f58qxL4oC5ykUNu9mYrx7dec/RJeDgizwOXXPXkOTt3Zd
         n881TeMBUZOASGlXEW3BNc1zrN6dakdUUQvj0AOz1oqXMv0sZQngtlqG95UqkCYkBDvd
         dJUSIpuHtrSiA23ox5QUv0dDe08pDerWUZzFy41VV0mT0A10+tde8ZYSNt9XKSHgkLCE
         XWwHtg4YSwIKAIcur8dvCCDhdXLJNSoSV8h6WgQ6AKMvugbojZZoq9bpFwXKN6I/vL1b
         v4KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:date:cc:to:from
         :subject:message-id;
        bh=CZdhc4ONzf0oxPGHJHPESzKjrmq2rGL31b2GfnltLv4=;
        b=F72IVk1nzpdJBDP3J3QfpjKkzTZcvixFilQBbVJbximELRiobn+cTqVrzRYDH8ACwF
         umwM92+jieeqVQwymqkDk7NGhoUr9pUFm52030woLdBn17PrTS0yCbP5V1jRjn3h2GsH
         pT6fjvyCFUXJLLLosMbSE8quQlsFGOArIg0BZAr7oZ+q7qk0H1ZqxzUDubd1uoW4T+pK
         OHF8UC1LQdUfdLKKyEmV49ckEGfKfUyPTzKiDyMZCD7o2czwb63YCKyvlFmHqFxfmDnZ
         xaDSdAI1HcMGEQPplUl4BYH/hkC7N6EywVq8wgfDLfTjZAKhe+4n31xcjlscrlTEU33b
         KEKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.63 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0063.hostedemail.com. [216.40.44.63])
        by gmr-mx.google.com with ESMTPS id k8si759047qkg.7.2019.09.08.21.21.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Sep 2019 21:21:53 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.63 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.63;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 5C95918029D92;
	Mon,  9 Sep 2019 04:21:53 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::,RULES_HIT:69:196:334:355:379:857:960:966:967:968:973:981:982:988:989:1042:1260:1277:1311:1313:1314:1345:1431:1437:1500:1515:1516:1518:1593:1594:1730:1747:1777:1792:1801:1981:2194:2196:2197:2198:2199:2200:2201:2202:2393:2525:2538:2568:2631:2682:2685:2693:2731:2828:2859:2892:2896:2902:2904:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3865:3866:3867:3868:3870:3871:3872:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:4384:4385:4395:4419:4560:4605:5007:6120:6299:7576:7875:7903:7904:7914:7974:8603:8660:8957:9010:9025:9036:9140:9545:10004:10394:10848:10967:11026:11232:11233:11657:11914:12043:12050:12262:12296:12297:12438:12555:12679:12698:12737:12740:12760:12895:12986:13148:13160:13161:13181:13229:13230:13439:13972:14659:14877:21063:21080:21221:21433:21451:21611:21627:21740:21772:21773:21789:21939:30003:30012:30025:30029:30045:30054:30056:30070:30075:30079:30080:30090:30091,0,
X-HE-Tag: pail22_849676b9d3544
X-Filterd-Recvd-Size: 91132
Received: from XPS-9350.home (unknown [47.151.152.152])
	(Authenticated sender: joe@perches.com)
	by omf10.hostedemail.com (Postfix) with ESMTPA;
	Mon,  9 Sep 2019 04:21:51 +0000 (UTC)
Message-ID: <7ef58eb00bc46b4ea3fe49a8c45cd2ff06292247.camel@perches.com>
Subject: [rfc patch script] treewide conversion of __section(foo) to
 section("foo");
From: Joe Perches <joe@perches.com>
To: Linus Torvalds <torvalds@linux-foundation.org>, Stephen Rothwell
	 <sfr@canb.auug.org.au>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	miguel.ojeda.sandonis@gmail.com, clang-built-linux@googlegroups.com, LKML
	 <linux-kernel@vger.kernel.org>
Date: Sun, 08 Sep 2019 21:21:49 -0700
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.63 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

This is an example script that could be applied to
-next to get compiler coverage testing for a treewide
conversion of __section(foo) to __section("foo")

I compiled an x86 defconfig but the coverage for this
script output, but it's possible an arch or two may have
asm compilation without including compiler-attributes.h where
conversion of __attribute__((section("foo") to __section("foo")
may fail.

---

Here's a perl script that converts the existing macro
and uses of __section to remove quoting from the macro
and add quoting to the uses.

It also converts __attribute__((section("foo"))) and
the multiple list forms of __attribute__ that have a
section("foo") entry.

The commit that this script produces is also attached
for today's -next.

$ cat section.pl
# convert linux-kernel __section uses from unquoted string to quoted string
# convert __attribute__((section("foo"))) to __section("foo")
# convert __attribute__((foo, section=("bar"), baz))
#      to __section("bar") attribute((foo, baz))

use strict;

# patch compiler_attributes.h to remove quoting of section name

my $result = qx{patch -p1 <<"EOF"
 include/linux/compiler_attributes.h | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
index 9ca040fa1cc6..88d3eea1cbba 100644
--- a/include/linux/compiler_attributes.h
+++ b/include/linux/compiler_attributes.h
@@ -225,21 +225,11 @@
 #define __pure                          __attribute__((__pure__))
 
 /*
- * Note: Since this macro makes use of the "stringification operator" `#`,
- * a quoted string literal should not be passed to it. eg. prefer:
- *     __section(.foo)
- * to:
- *     __section(".foo")
- * unless the section name is dynamically built up, in which case the
- * verbose __attribute__((__section__(".foo" x))) should be preferred.
- *
- * See also: https://bugs.llvm.org/show_bug.cgi?id=42950
- *
  *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-section-function-attribute
  *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Variable-Attributes.html#index-section-variable-attribute
  * clang: https://clang.llvm.org/docs/AttributeReference.html#section-declspec-allocate
  */
-#define __section(S)                    __attribute__((__section__(#S)))
+#define __section(section)              __attribute__((__section__(section)))
 
 /*
  *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-unused-function-attribute
EOF};

# Get the list of files to modify (contains __section or __attribute__.*section
# (ignore scripts, tools, uapi, and compiler_attributes.h)

my $output = `git grep --name-only -P "(?:\\b__section\\b\|\\b__attribute__\\b.*section)" | grep -vP '^(?:include/linux/compiler_attributes\\.h|scripts/|tools/|/uapi/)'`;
my @files = split("\n", $output);

# Modify each possible file
foreach (@files) {
    chomp;
    my $file = $_;

    # read the original file
    open(FH, '<', $file) or die $!;
    my @lines = <FH>;
    close FH;

    # write the modified file line by line
    open (FH, '>', $file) or die $!;
    foreach my $line (@lines) {
	chomp $line;
	my $newline = $line;

	# Convert __section(foo) to __section("foo")
	# if "foo" uses token pasting, pre and post tokens are also quoted
	if ($line =~ m/\b__section\s*\(\s*(?!")([^\)]+)\)/) {
	    my $oldsection = $1;
	    my $newsection = $1;
	    if ($oldsection =~ /(.*)##(.*)##(.*)/) {
		$newsection = '"' . trim($1) . '" ## ' . trim($2) . ' ## "' . trim($3) . '"';
	    } else {
		$newsection = '"' . trim($oldsection) . '"';
	    }
	    $newline =~ s/__section\s*\(\s*\Q$oldsection\E\s*\)/__section($newsection)/;
	}

	# convert __attribute__((section("foo"))) to __section("foo")
	$newline =~ s/\b__attribute__\s*\(\s*\(\s*_*section_*\s*\(\s*("[^"]+")\s*\)\s*\)\s*\)/__section($1)/;

	# convert __attribute__((foo, section=("bar"), baz))
	# to __section("bar") attribute((foo, baz))
	if ($newline =~ /(\b__attribute__\s*\(\s*\(([^,_]+)?(\s*,?\s*_*section_*\s*\(\s*("[^"]+")\s*\)\s*,?\s*)(.*)\s*\)\s*\))/) {
	    my $section = $3;
	    my $comma = "";
	    $comma = ", " if ($section =~ /^\s*,/ && $section =~ /,\s*$/);
	    $newline =~ s/\Q$section\E/$comma/;
	    $section =~ s/^[^"]*//;
	    $section =~ s/^("[^"]*").*/$1/;
	    $newline =~ s/\b__attribute__/__section($section) __attribute__/;
	}

	# if the line ended with a line continuation \, try to move the
	# continuation to the same location by removing or adding tabs
	if ($line =~ /\\$/) {
	    my $olen = length(expand_tabs($line));
	    my $nlen = length(expand_tabs($newline));
	    if ($newline =~ /\t\\$/) {
		if ($nlen > $olen) {
		    $newline =~ s/\t\\$/\\/;
		} else {
		    while ($nlen < $olen) {
			$newline =~ s/\\$/\t\\/;
			$nlen = length(expand_tabs($newline));
		    }
		}
	    }
	}
	print FH "$newline\n";
    }
    close FH;
}

# And git commit the changes
$result = qx{git commit -a --author='Joe Perches <joe\@perches.com>' -F- <<"EOF"
treewide: Convert macro and uses of __section(foo) to __section("foo")

Use a more generic form for __section that requires quotes to avoid
complications with clang and gcc differences.

Remove the quote operator # from compiler_attributes.h __section macro.

Convert all unquoted __section(foo) uses to quoted __section("foo").
Also convert __attribute__((section("foo"))) uses to __section("foo")
even if the __attribute__ has multiple list entry forms.

Signed-off-by: Joe Perches <joe\@perches.com>
EOF
};

# utility subroutines
sub trim {
    my ($string) = @_;
    $string =~ s/^\s+|\s+$//g;
    return $string;
}

sub expand_tabs {
	my ($str) = @_;

	my $res = '';
	my $n = 0;
	for my $c (split(//, $str)) {
		if ($c eq "\t") {
			$res .= ' ';
			$n++;
			for (; ($n % 8) != 0; $n++) {
				$res .= ' ';
			}
			next;
		}
		$res .= $c;
		$n++;
	}

	return $res;
}

So running the script:

$ perl section.pl

produces a commit
---
From 04e52f34fd4ee7008ea5bf0d8896bf8d1fdf9f3f Mon Sep 17 00:00:00 2001
Message-Id: <04e52f34fd4ee7008ea5bf0d8896bf8d1fdf9f3f.1568001863.git.joe@perches.com>
From: Joe Perches <joe@perches.com>
Date: Sun, 8 Sep 2019 20:53:41 -0700
Subject: [PATCH] treewide: Convert macro and uses of __section(foo) to
 __section("foo")

Use a more generic form for __section that requires quotes to avoid
complications with clang and gcc differences.

Remove the quote operator # from compiler_attributes.h __section macro.

Convert all unquoted __section(foo) uses to quoted __section("foo").
Also convert __attribute__((section("foo"))) uses to __section("foo")
even if the __attribute__ has multiple list entry forms.

Signed-off-by: Joe Perches <joe@perches.com>
---
 arch/arc/include/asm/linkage.h                    |  8 +++---
 arch/arc/include/asm/mach_desc.h                  |  2 +-
 arch/arc/plat-hsdk/platform.c                     |  2 +-
 arch/arm/include/asm/cache.h                      |  2 +-
 arch/arm/include/asm/cpuidle.h                    |  2 +-
 arch/arm/include/asm/idmap.h                      |  2 +-
 arch/arm/include/asm/kvm_hyp.h                    |  2 +-
 arch/arm/include/asm/mach/arch.h                  |  4 +--
 arch/arm/include/asm/setup.h                      |  2 +-
 arch/arm/include/asm/smp.h                        |  2 +-
 arch/arm/include/asm/tcm.h                        |  8 +++---
 arch/arm/kernel/cpuidle.c                         |  2 +-
 arch/arm/kernel/devtree.c                         |  2 +-
 arch/arm64/include/asm/cache.h                    |  2 +-
 arch/arm64/include/asm/exception.h                |  2 +-
 arch/arm64/include/asm/kvm_hyp.h                  |  2 +-
 arch/arm64/kernel/efi.c                           |  2 +-
 arch/arm64/kernel/smp_spin_table.c                |  2 +-
 arch/ia64/include/asm/cache.h                     |  2 +-
 arch/microblaze/kernel/setup.c                    |  2 +-
 arch/mips/include/asm/cache.h                     |  2 +-
 arch/mips/include/asm/mach-pmcs-msp71xx/msp_pci.h |  4 +--
 arch/mips/include/asm/machine.h                   |  2 +-
 arch/mips/include/asm/mips_machine.h              |  2 +-
 arch/mips/kernel/setup.c                          |  2 +-
 arch/mips/mm/init.c                               |  2 +-
 arch/parisc/include/asm/cache.h                   |  2 +-
 arch/parisc/include/asm/ldcw.h                    |  2 +-
 arch/parisc/kernel/ftrace.c                       |  2 +-
 arch/parisc/mm/init.c                             |  6 ++--
 arch/powerpc/boot/main.c                          |  2 +-
 arch/powerpc/boot/ps3.c                           |  2 +-
 arch/powerpc/include/asm/cache.h                  |  2 +-
 arch/powerpc/include/asm/machdep.h                |  2 +-
 arch/powerpc/kernel/btext.c                       |  2 +-
 arch/powerpc/kernel/prom_init.c                   |  2 +-
 arch/powerpc/kvm/book3s_64_vio_hv.c               |  2 +-
 arch/s390/boot/compressed/decompressor.c          |  2 +-
 arch/s390/boot/ipl_parm.c                         |  4 +--
 arch/s390/boot/startup.c                          |  2 +-
 arch/s390/include/asm/cache.h                     |  2 +-
 arch/s390/include/asm/sections.h                  |  4 +--
 arch/s390/kernel/setup.c                          |  2 +-
 arch/s390/mm/init.c                               |  2 +-
 arch/sh/boards/of-generic.c                       |  2 +-
 arch/sh/include/asm/cache.h                       |  2 +-
 arch/sh/include/asm/machvec.h                     |  2 +-
 arch/sh/include/asm/smp.h                         |  2 +-
 arch/sparc/include/asm/cache.h                    |  2 +-
 arch/sparc/kernel/btext.c                         |  2 +-
 arch/um/include/shared/init.h                     | 22 +++++++--------
 arch/um/kernel/skas/clone.c                       |  2 +-
 arch/um/kernel/um_arch.c                          |  2 +-
 arch/x86/boot/compressed/pgtable_64.c             |  2 +-
 arch/x86/boot/tty.c                               |  8 +++---
 arch/x86/boot/video.h                             |  2 +-
 arch/x86/include/asm/apic.h                       |  4 +--
 arch/x86/include/asm/cache.h                      |  2 +-
 arch/x86/include/asm/intel-mid.h                  |  2 +-
 arch/x86/include/asm/iommu_table.h                |  2 +-
 arch/x86/include/asm/irqflags.h                   |  2 +-
 arch/x86/include/asm/mem_encrypt.h                |  2 +-
 arch/x86/include/asm/setup.h                      |  2 +-
 arch/x86/kernel/cpu/cpu.h                         |  2 +-
 arch/x86/kernel/head64.c                          |  2 +-
 arch/x86/mm/mem_encrypt.c                         |  4 +--
 arch/x86/mm/mem_encrypt_identity.c                |  2 +-
 arch/x86/platform/pvh/enlighten.c                 |  4 +--
 arch/x86/purgatory/purgatory.c                    | 10 +++----
 arch/x86/um/stub_segv.c                           |  2 +-
 arch/x86/xen/enlighten.c                          |  2 +-
 arch/x86/xen/enlighten_pvh.c                      |  2 +-
 arch/xtensa/kernel/setup.c                        |  2 +-
 drivers/clk/clk.c                                 |  2 +-
 drivers/clocksource/timer-probe.c                 |  2 +-
 drivers/firmware/efi/libstub/efi-stub-helper.c    |  6 ++--
 drivers/irqchip/irqchip.c                         |  2 +-
 drivers/of/of_reserved_mem.c                      |  2 +-
 drivers/s390/char/sclp_early_core.c               |  4 +--
 drivers/thermal/thermal_core.h                    |  2 +-
 include/asm-generic/bug.h                         |  6 ++--
 include/asm-generic/error-injection.h             |  2 +-
 include/asm-generic/kprobes.h                     |  4 +--
 include/linux/acpi.h                              |  2 +-
 include/linux/cache.h                             |  4 +--
 include/linux/compiler.h                          |  8 +++---
 include/linux/compiler_attributes.h               | 12 +-------
 include/linux/cpu.h                               |  2 +-
 include/linux/dynamic_debug.h                     |  2 +-
 include/linux/export.h                            |  4 +--
 include/linux/firmware.h                          |  2 +-
 include/linux/frame.h                             |  2 +-
 include/linux/init.h                              | 34 +++++++++++------------
 include/linux/init_task.h                         |  4 +--
 include/linux/interrupt.h                         |  4 +--
 include/linux/kernel.h                            |  6 ++--
 include/linux/linkage.h                           |  4 +--
 include/linux/lsm_hooks.h                         |  4 +--
 include/linux/module.h                            |  2 +-
 include/linux/moduleparam.h                       |  4 +--
 include/linux/mtd/xip.h                           |  2 +-
 include/linux/of.h                                |  2 +-
 include/linux/percpu-defs.h                       |  2 +-
 include/linux/printk.h                            |  4 +--
 include/linux/rcupdate.h                          |  2 +-
 include/linux/sched/debug.h                       |  2 +-
 include/linux/serial_core.h                       |  2 +-
 include/linux/spinlock.h                          |  2 +-
 include/linux/srcutree.h                          |  2 +-
 include/linux/syscalls.h                          |  6 ++--
 include/linux/trace_events.h                      |  2 +-
 include/linux/tracepoint.h                        |  8 +++---
 include/trace/bpf_probe.h                         |  2 +-
 include/trace/trace_events.h                      | 10 +++----
 kernel/kallsyms.c                                 |  4 +--
 kernel/trace/trace_export.c                       |  2 +-
 116 files changed, 193 insertions(+), 203 deletions(-)

diff --git a/arch/arc/include/asm/linkage.h b/arch/arc/include/asm/linkage.h
index d9ee43c6b7db..ec4edf654ae0 100644
--- a/arch/arc/include/asm/linkage.h
+++ b/arch/arc/include/asm/linkage.h
@@ -62,15 +62,15 @@
 #else	/* !__ASSEMBLY__ */
 
 #ifdef CONFIG_ARC_HAS_ICCM
-#define __arcfp_code __section(.text.arcfp)
+#define __arcfp_code __section(".text.arcfp")
 #else
-#define __arcfp_code __section(.text)
+#define __arcfp_code __section(".text")
 #endif
 
 #ifdef CONFIG_ARC_HAS_DCCM
-#define __arcfp_data __section(.data.arcfp)
+#define __arcfp_data __section(".data.arcfp")
 #else
-#define __arcfp_data __section(.data)
+#define __arcfp_data __section(".data")
 #endif
 
 #endif /* __ASSEMBLY__ */
diff --git a/arch/arc/include/asm/mach_desc.h b/arch/arc/include/asm/mach_desc.h
index 73746ed5b834..c4e197059379 100644
--- a/arch/arc/include/asm/mach_desc.h
+++ b/arch/arc/include/asm/mach_desc.h
@@ -53,7 +53,7 @@ extern const struct machine_desc __arch_info_begin[], __arch_info_end[];
  */
 #define MACHINE_START(_type, _name)			\
 static const struct machine_desc __mach_desc_##_type	\
-__used __section(.arch.info.init) = {			\
+__used __section(".arch.info.init") = {			\
 	.name		= _name,
 
 #define MACHINE_END				\
diff --git a/arch/arc/plat-hsdk/platform.c b/arch/arc/plat-hsdk/platform.c
index 0b961a2a10b8..0b63fc095b99 100644
--- a/arch/arc/plat-hsdk/platform.c
+++ b/arch/arc/plat-hsdk/platform.c
@@ -13,7 +13,7 @@
 #include <asm/io.h>
 #include <asm/mach_desc.h>
 
-int arc_hsdk_axi_dmac_coherent __section(.data) = 0;
+int arc_hsdk_axi_dmac_coherent __section(".data") = 0;
 
 #define ARC_CCM_UNUSED_ADDR	0x60000000
 
diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
index cc06079600e0..e3ea34558ada 100644
--- a/arch/arm/include/asm/cache.h
+++ b/arch/arm/include/asm/cache.h
@@ -24,6 +24,6 @@
 #define ARCH_SLAB_MINALIGN 8
 #endif
 
-#define __read_mostly __section(.data..read_mostly)
+#define __read_mostly __section(".data..read_mostly")
 
 #endif
diff --git a/arch/arm/include/asm/cpuidle.h b/arch/arm/include/asm/cpuidle.h
index 6b2ff7243b4b..0d67ed682e07 100644
--- a/arch/arm/include/asm/cpuidle.h
+++ b/arch/arm/include/asm/cpuidle.h
@@ -42,7 +42,7 @@ struct of_cpuidle_method {
 
 #define CPUIDLE_METHOD_OF_DECLARE(name, _method, _ops)			\
 	static const struct of_cpuidle_method __cpuidle_method_of_table_##name \
-	__used __section(__cpuidle_method_of_table)			\
+	__used __section("__cpuidle_method_of_table")			\
 	= { .method = _method, .ops = _ops }
 
 extern int arm_cpuidle_suspend(int index);
diff --git a/arch/arm/include/asm/idmap.h b/arch/arm/include/asm/idmap.h
index 73ba956e379f..25eb8b3a131d 100644
--- a/arch/arm/include/asm/idmap.h
+++ b/arch/arm/include/asm/idmap.h
@@ -6,7 +6,7 @@
 #include <asm/pgtable.h>
 
 /* Tag a function as requiring to be executed via an identity mapping. */
-#define __idmap __section(.idmap.text) noinline notrace
+#define __idmap __section(".idmap.text") noinline notrace
 
 extern pgd_t *idmap_pgd;
 
diff --git a/arch/arm/include/asm/kvm_hyp.h b/arch/arm/include/asm/kvm_hyp.h
index 40e9034db601..58665df3da01 100644
--- a/arch/arm/include/asm/kvm_hyp.h
+++ b/arch/arm/include/asm/kvm_hyp.h
@@ -12,7 +12,7 @@
 #include <asm/cp15.h>
 #include <asm/vfp.h>
 
-#define __hyp_text __section(.hyp.text) notrace
+#define __hyp_text __section(".hyp.text") notrace
 
 #define __ACCESS_VFP(CRn)			\
 	"mrc", "mcr", __stringify(p10, 7, %0, CRn, cr0, 0), u32
diff --git a/arch/arm/include/asm/mach/arch.h b/arch/arm/include/asm/mach/arch.h
index 2986f6b4862d..6a2111fdf117 100644
--- a/arch/arm/include/asm/mach/arch.h
+++ b/arch/arm/include/asm/mach/arch.h
@@ -81,7 +81,7 @@ extern const struct machine_desc __arch_info_begin[], __arch_info_end[];
 #define MACHINE_START(_type,_name)			\
 static const struct machine_desc __mach_desc_##_type	\
  __used							\
- __section(.arch.info.init) = {	\
+ __section(".arch.info.init") = {\
 	.nr		= MACH_TYPE_##_type,		\
 	.name		= _name,
 
@@ -91,7 +91,7 @@ static const struct machine_desc __mach_desc_##_type	\
 #define DT_MACHINE_START(_name, _namestr)		\
 static const struct machine_desc __mach_desc_##_name	\
  __used							\
- __section(.arch.info.init) = {	\
+ __section(".arch.info.init") = {\
 	.nr		= ~0,				\
 	.name		= _namestr,
 
diff --git a/arch/arm/include/asm/setup.h b/arch/arm/include/asm/setup.h
index 00190f1f0574..3ae68a1b3de6 100644
--- a/arch/arm/include/asm/setup.h
+++ b/arch/arm/include/asm/setup.h
@@ -14,7 +14,7 @@
 #include <uapi/asm/setup.h>
 
 
-#define __tag __used __section(.taglist.init)
+#define __tag __used __section(".taglist.init")
 #define __tagtable(tag, fn) \
 static const struct tagtable __tagtable_##fn __tag = { tag, fn }
 
diff --git a/arch/arm/include/asm/smp.h b/arch/arm/include/asm/smp.h
index a91f21e3c5b5..8fc46d7654d6 100644
--- a/arch/arm/include/asm/smp.h
+++ b/arch/arm/include/asm/smp.h
@@ -113,7 +113,7 @@ struct of_cpu_method {
 
 #define CPU_METHOD_OF_DECLARE(name, _method, _ops)			\
 	static const struct of_cpu_method __cpu_method_of_table_##name	\
-		__used __section(__cpu_method_of_table)			\
+		__used __section("__cpu_method_of_table")		\
 		= { .method = _method, .ops = _ops }
 /*
  * set platform specific SMP operations
diff --git a/arch/arm/include/asm/tcm.h b/arch/arm/include/asm/tcm.h
index b845b10fe29a..d8bd8a4b0ede 100644
--- a/arch/arm/include/asm/tcm.h
+++ b/arch/arm/include/asm/tcm.h
@@ -16,13 +16,13 @@
 #include <linux/compiler.h>
 
 /* Tag variables with this */
-#define __tcmdata __section(.tcm.data)
+#define __tcmdata __section(".tcm.data")
 /* Tag constants with this */
-#define __tcmconst __section(.tcm.rodata)
+#define __tcmconst __section(".tcm.rodata")
 /* Tag functions inside TCM called from outside TCM with this */
-#define __tcmfunc __attribute__((long_call)) __section(.tcm.text) noinline
+#define __tcmfunc __attribute__((long_call)) __section(".tcm.text") noinline
 /* Tag function inside TCM called from inside TCM  with this */
-#define __tcmlocalfunc __section(.tcm.text)
+#define __tcmlocalfunc __section(".tcm.text")
 
 void *tcm_alloc(size_t len);
 void tcm_free(void *addr, size_t len);
diff --git a/arch/arm/kernel/cpuidle.c b/arch/arm/kernel/cpuidle.c
index 093368e0d020..e1684623e1b2 100644
--- a/arch/arm/kernel/cpuidle.c
+++ b/arch/arm/kernel/cpuidle.c
@@ -11,7 +11,7 @@
 extern struct of_cpuidle_method __cpuidle_method_of_table[];
 
 static const struct of_cpuidle_method __cpuidle_method_of_table_sentinel
-	__used __section(__cpuidle_method_of_table_end);
+	__used __section("__cpuidle_method_of_table_end");
 
 static struct cpuidle_ops cpuidle_ops[NR_CPUS] __ro_after_init;
 
diff --git a/arch/arm/kernel/devtree.c b/arch/arm/kernel/devtree.c
index 39c978698406..7f0745a97e20 100644
--- a/arch/arm/kernel/devtree.c
+++ b/arch/arm/kernel/devtree.c
@@ -29,7 +29,7 @@
 extern struct of_cpu_method __cpu_method_of_table[];
 
 static const struct of_cpu_method __cpu_method_of_table_sentinel
-	__used __section(__cpu_method_of_table_end);
+	__used __section("__cpu_method_of_table_end");
 
 
 static int __init set_smp_ops_by_method(struct device_node *node)
diff --git a/arch/arm64/include/asm/cache.h b/arch/arm64/include/asm/cache.h
index 43da6dd29592..25f85bb15f78 100644
--- a/arch/arm64/include/asm/cache.h
+++ b/arch/arm64/include/asm/cache.h
@@ -78,7 +78,7 @@ static inline u32 cache_type_cwg(void)
 	return (read_cpuid_cachetype() >> CTR_CWG_SHIFT) & CTR_CWG_MASK;
 }
 
-#define __read_mostly __section(.data..read_mostly)
+#define __read_mostly __section(".data..read_mostly")
 
 static inline int cache_line_size_of_cpu(void)
 {
diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
index a17393ff6677..a8547628e339 100644
--- a/arch/arm64/include/asm/exception.h
+++ b/arch/arm64/include/asm/exception.h
@@ -11,7 +11,7 @@
 
 #include <linux/interrupt.h>
 
-#define __exception	__attribute__((section(".exception.text")))
+#define __exception	__section(".exception.text")
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
 #define __exception_irq_entry	__irq_entry
 #else
diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index 86825aa20852..69b657b941f8 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -13,7 +13,7 @@
 #include <asm/kvm_mmu.h>
 #include <asm/sysreg.h>
 
-#define __hyp_text __section(.hyp.text) notrace
+#define __hyp_text __section(".hyp.text") notrace
 
 #define read_sysreg_elx(r,nvh,vh)					\
 	({								\
diff --git a/arch/arm64/kernel/efi.c b/arch/arm64/kernel/efi.c
index d0cf596db82c..fa02efb28e88 100644
--- a/arch/arm64/kernel/efi.c
+++ b/arch/arm64/kernel/efi.c
@@ -54,7 +54,7 @@ static __init pteval_t create_mapping_protection(efi_memory_desc_t *md)
 }
 
 /* we will fill this structure from the stub, so don't put it in .bss */
-struct screen_info screen_info __section(.data);
+struct screen_info screen_info __section(".data");
 
 int __init efi_create_mapping(struct mm_struct *mm, efi_memory_desc_t *md)
 {
diff --git a/arch/arm64/kernel/smp_spin_table.c b/arch/arm64/kernel/smp_spin_table.c
index c8a3fee00c11..76c2739ba8a4 100644
--- a/arch/arm64/kernel/smp_spin_table.c
+++ b/arch/arm64/kernel/smp_spin_table.c
@@ -19,7 +19,7 @@
 #include <asm/smp_plat.h>
 
 extern void secondary_holding_pen(void);
-volatile unsigned long __section(.mmuoff.data.read)
+volatile unsigned long __section(".mmuoff.data.read")
 secondary_holding_pen_release = INVALID_HWID;
 
 static phys_addr_t cpu_release_addr[NR_CPUS];
diff --git a/arch/ia64/include/asm/cache.h b/arch/ia64/include/asm/cache.h
index 7decf91ca11a..2f1c70647068 100644
--- a/arch/ia64/include/asm/cache.h
+++ b/arch/ia64/include/asm/cache.h
@@ -25,6 +25,6 @@
 # define SMP_CACHE_BYTES	(1 << 3)
 #endif
 
-#define __read_mostly __section(.data..read_mostly)
+#define __read_mostly __section(".data..read_mostly")
 
 #endif /* _ASM_IA64_CACHE_H */
diff --git a/arch/microblaze/kernel/setup.c b/arch/microblaze/kernel/setup.c
index 522a0c5d9c59..45a4e8e215d4 100644
--- a/arch/microblaze/kernel/setup.c
+++ b/arch/microblaze/kernel/setup.c
@@ -47,7 +47,7 @@ unsigned int boot_cpuid;
  * ASM code. Default position is BSS section which is cleared
  * in machine_early_init().
  */
-char cmd_line[COMMAND_LINE_SIZE] __attribute__ ((section(".data")));
+char cmd_line[COMMAND_LINE_SIZE] __section(".data");
 
 void __init setup_arch(char **cmdline_p)
 {
diff --git a/arch/mips/include/asm/cache.h b/arch/mips/include/asm/cache.h
index af2d943580ee..29187e12b861 100644
--- a/arch/mips/include/asm/cache.h
+++ b/arch/mips/include/asm/cache.h
@@ -14,6 +14,6 @@
 #define L1_CACHE_SHIFT		CONFIG_MIPS_L1_CACHE_SHIFT
 #define L1_CACHE_BYTES		(1 << L1_CACHE_SHIFT)
 
-#define __read_mostly __section(.data..read_mostly)
+#define __read_mostly __section(".data..read_mostly")
 
 #endif /* _ASM_CACHE_H */
diff --git a/arch/mips/include/asm/mach-pmcs-msp71xx/msp_pci.h b/arch/mips/include/asm/mach-pmcs-msp71xx/msp_pci.h
index 5b2535efceb2..94531cfb8668 100644
--- a/arch/mips/include/asm/mach-pmcs-msp71xx/msp_pci.h
+++ b/arch/mips/include/asm/mach-pmcs-msp71xx/msp_pci.h
@@ -182,8 +182,8 @@ struct msp_pci_regs
 #define BPCI_RESETCTL_RI (1<<14)   /* PCI reset in */
 
 extern struct msp_pci_regs msp_pci_regs
-			__attribute__((section(".register")));
+			__section(".register");
 extern unsigned long msp_pci_config_space
-			__attribute__((section(".register")));
+			__section(".register");
 
 #endif /* !_MSP_PCI_H_ */
diff --git a/arch/mips/include/asm/machine.h b/arch/mips/include/asm/machine.h
index 29ca344a8cab..fc64cce270f0 100644
--- a/arch/mips/include/asm/machine.h
+++ b/arch/mips/include/asm/machine.h
@@ -23,7 +23,7 @@ extern long __mips_machines_end;
 
 #define MIPS_MACHINE(name)						\
 	static const struct mips_machine __mips_mach_##name		\
-		__used __section(.mips.machines.init)
+		__used __section(".mips.machines.init")
 
 #define for_each_mips_machine(mach)					\
 	for ((mach) = (struct mips_machine *)&__mips_machines_start;	\
diff --git a/arch/mips/include/asm/mips_machine.h b/arch/mips/include/asm/mips_machine.h
index 4efecb70c24e..91d8fd4305c1 100644
--- a/arch/mips/include/asm/mips_machine.h
+++ b/arch/mips/include/asm/mips_machine.h
@@ -24,7 +24,7 @@ static const char machine_name_##_type[] __initconst		\
 static const char machine_id_##_type[] __initconst		\
 			__aligned(1) = _id;			\
 static struct mips_machine machine_##_type			\
-		__used __section(.mips.machines.init) =		\
+		__used __section(".mips.machines.init") =	\
 {								\
 	.mach_type	= _type,				\
 	.mach_id	= machine_id_##_type,			\
diff --git a/arch/mips/kernel/setup.c b/arch/mips/kernel/setup.c
index b8249c233754..be5bb90e0688 100644
--- a/arch/mips/kernel/setup.c
+++ b/arch/mips/kernel/setup.c
@@ -43,7 +43,7 @@
 #include <asm/prom.h>
 
 #ifdef CONFIG_MIPS_ELF_APPENDED_DTB
-const char __section(.appended_dtb) __appended_dtb[0x100000];
+const char __section(".appended_dtb") __appended_dtb[0x100000];
 #endif /* CONFIG_MIPS_ELF_APPENDED_DTB */
 
 struct cpuinfo_mips cpu_data[NR_CPUS] __read_mostly;
diff --git a/arch/mips/mm/init.c b/arch/mips/mm/init.c
index 6fea3b54c961..2c6f5ed12f24 100644
--- a/arch/mips/mm/init.c
+++ b/arch/mips/mm/init.c
@@ -513,7 +513,7 @@ unsigned long pgd_current[NR_CPUS];
  * size, and waste space.  So we place it in its own section and align
  * it in the linker script.
  */
-pgd_t swapper_pg_dir[PTRS_PER_PGD] __section(.bss..swapper_pg_dir);
+pgd_t swapper_pg_dir[PTRS_PER_PGD] __section(".bss..swapper_pg_dir");
 #ifndef __PAGETABLE_PUD_FOLDED
 pud_t invalid_pud_table[PTRS_PER_PUD] __page_aligned_bss;
 #endif
diff --git a/arch/parisc/include/asm/cache.h b/arch/parisc/include/asm/cache.h
index e5de3f897633..d53e9e27dba0 100644
--- a/arch/parisc/include/asm/cache.h
+++ b/arch/parisc/include/asm/cache.h
@@ -22,7 +22,7 @@
 
 #define ARCH_DMA_MINALIGN	L1_CACHE_BYTES
 
-#define __read_mostly __section(.data..read_mostly)
+#define __read_mostly __section(".data..read_mostly")
 
 void parisc_cache_init(void);	/* initializes cache-flushing */
 void disable_sr_hashing_asm(int); /* low level support for above */
diff --git a/arch/parisc/include/asm/ldcw.h b/arch/parisc/include/asm/ldcw.h
index e080143e79a3..6d28b5514699 100644
--- a/arch/parisc/include/asm/ldcw.h
+++ b/arch/parisc/include/asm/ldcw.h
@@ -52,7 +52,7 @@
 })
 
 #ifdef CONFIG_SMP
-# define __lock_aligned __section(.data..lock_aligned)
+# define __lock_aligned __section(".data..lock_aligned")
 #endif
 
 #endif /* __PARISC_LDCW_H */
diff --git a/arch/parisc/kernel/ftrace.c b/arch/parisc/kernel/ftrace.c
index b836fc61a24f..798b9a9de60c 100644
--- a/arch/parisc/kernel/ftrace.c
+++ b/arch/parisc/kernel/ftrace.c
@@ -21,7 +21,7 @@
 #include <asm/ftrace.h>
 #include <asm/patch.h>
 
-#define __hot __attribute__ ((__section__ (".text.hot")))
+#define __hot __section(".text.hot")
 
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
 /*
diff --git a/arch/parisc/mm/init.c b/arch/parisc/mm/init.c
index ddca8287d43b..94ebb5bc18c4 100644
--- a/arch/parisc/mm/init.c
+++ b/arch/parisc/mm/init.c
@@ -43,11 +43,11 @@ extern void parisc_kernel_start(void);	/* Kernel entry point in head.S */
  * guarantee that global objects will be laid out in memory in the same order
  * as the order of declaration, so put these in different sections and use
  * the linker script to order them. */
-pmd_t pmd0[PTRS_PER_PMD] __attribute__ ((__section__ (".data..vm0.pmd"), aligned(PAGE_SIZE)));
+pmd_t pmd0[PTRS_PER_PMD] __section(".data..vm0.pmd") __attribute__ ((aligned(PAGE_SIZE)));
 #endif
 
-pgd_t swapper_pg_dir[PTRS_PER_PGD] __attribute__ ((__section__ (".data..vm0.pgd"), aligned(PAGE_SIZE)));
-pte_t pg0[PT_INITIAL * PTRS_PER_PTE] __attribute__ ((__section__ (".data..vm0.pte"), aligned(PAGE_SIZE)));
+pgd_t swapper_pg_dir[PTRS_PER_PGD] __section(".data..vm0.pgd") __attribute__ ((aligned(PAGE_SIZE)));
+pte_t pg0[PT_INITIAL * PTRS_PER_PTE] __section(".data..vm0.pte") __attribute__ ((aligned(PAGE_SIZE)));
 
 static struct resource data_resource = {
 	.name	= "Kernel data",
diff --git a/arch/powerpc/boot/main.c b/arch/powerpc/boot/main.c
index a9d209135975..a53e028ad14c 100644
--- a/arch/powerpc/boot/main.c
+++ b/arch/powerpc/boot/main.c
@@ -191,7 +191,7 @@ static inline void prep_esm_blob(struct addr_range vmlinux, void *chosen) { }
  * The buffer is put in it's own section so that tools may locate it easier.
  */
 static char cmdline[BOOT_COMMAND_LINE_SIZE]
-	__attribute__((__section__("__builtin_cmdline")));
+	__section("__builtin_cmdline");
 
 static void prep_cmdline(void *chosen)
 {
diff --git a/arch/powerpc/boot/ps3.c b/arch/powerpc/boot/ps3.c
index c52552a681c5..1cc9a5d515c6 100644
--- a/arch/powerpc/boot/ps3.c
+++ b/arch/powerpc/boot/ps3.c
@@ -36,7 +36,7 @@ BSS_STACK(4096);
  */
 
 static char cmdline[BOOT_COMMAND_LINE_SIZE]
-	__attribute__((__section__("__builtin_cmdline")));
+	__section("__builtin_cmdline");
 
 static void prep_cmdline(void *chosen)
 {
diff --git a/arch/powerpc/include/asm/cache.h b/arch/powerpc/include/asm/cache.h
index 45e3137ccd71..afc4f1c1220b 100644
--- a/arch/powerpc/include/asm/cache.h
+++ b/arch/powerpc/include/asm/cache.h
@@ -91,7 +91,7 @@ static inline u32 l1_cache_bytes(void)
 	isync
 
 #else
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(".data..read_mostly")
 
 #ifdef CONFIG_PPC_BOOK3S_32
 extern long _get_L2CR(void);
diff --git a/arch/powerpc/include/asm/machdep.h b/arch/powerpc/include/asm/machdep.h
index 657ec893bdcb..0cb15d8a22e4 100644
--- a/arch/powerpc/include/asm/machdep.h
+++ b/arch/powerpc/include/asm/machdep.h
@@ -238,7 +238,7 @@ extern void book3e_idle(void);
 extern struct machdep_calls ppc_md;
 extern struct machdep_calls *machine_id;
 
-#define __machine_desc __attribute__ ((__section__ (".machine.desc")))
+#define __machine_desc __section(".machine.desc")
 
 #define define_machine(name)					\
 	extern struct machdep_calls mach_##name;		\
diff --git a/arch/powerpc/kernel/btext.c b/arch/powerpc/kernel/btext.c
index 6dfceaa820e4..cab345edb75e 100644
--- a/arch/powerpc/kernel/btext.c
+++ b/arch/powerpc/kernel/btext.c
@@ -26,7 +26,7 @@
 static void scrollscreen(void);
 #endif
 
-#define __force_data __attribute__((__section__(".data")))
+#define __force_data __section(".data")
 
 static int g_loc_X __force_data;
 static int g_loc_Y __force_data;
diff --git a/arch/powerpc/kernel/prom_init.c b/arch/powerpc/kernel/prom_init.c
index a4e7762dd286..03e19809e6dd 100644
--- a/arch/powerpc/kernel/prom_init.c
+++ b/arch/powerpc/kernel/prom_init.c
@@ -45,7 +45,7 @@
 #include <linux/linux_logo.h>
 
 /* All of prom_init bss lives here */
-#define __prombss __section(.bss.prominit)
+#define __prombss __section(".bss.prominit")
 
 /*
  * Eventually bump that one up
diff --git a/arch/powerpc/kvm/book3s_64_vio_hv.c b/arch/powerpc/kvm/book3s_64_vio_hv.c
index ab6eeb8e753e..2e77140b65d0 100644
--- a/arch/powerpc/kvm/book3s_64_vio_hv.c
+++ b/arch/powerpc/kvm/book3s_64_vio_hv.c
@@ -33,7 +33,7 @@
 #ifdef CONFIG_BUG
 
 #define WARN_ON_ONCE_RM(condition)	({			\
-	static bool __section(.data.unlikely) __warned;		\
+	static bool __section(".data.unlikely") __warned;	\
 	int __ret_warn_once = !!(condition);			\
 								\
 	if (unlikely(__ret_warn_once && !__warned)) {		\
diff --git a/arch/s390/boot/compressed/decompressor.c b/arch/s390/boot/compressed/decompressor.c
index 45046630c56a..08c41e5ebf22 100644
--- a/arch/s390/boot/compressed/decompressor.c
+++ b/arch/s390/boot/compressed/decompressor.c
@@ -16,7 +16,7 @@
  * gzip declarations
  */
 #define STATIC static
-#define STATIC_RW_DATA static __section(.data)
+#define STATIC_RW_DATA static __section(".data")
 
 #undef memset
 #undef memcpy
diff --git a/arch/s390/boot/ipl_parm.c b/arch/s390/boot/ipl_parm.c
index 24ef67eb1cef..a4db9dc42080 100644
--- a/arch/s390/boot/ipl_parm.c
+++ b/arch/s390/boot/ipl_parm.c
@@ -20,7 +20,7 @@ unsigned long __bootdata(memory_end);
 int __bootdata(memory_end_set);
 int __bootdata(noexec_disabled);
 
-int kaslr_enabled __section(.data);
+int kaslr_enabled __section(".data");
 
 static inline int __diag308(unsigned long subcode, void *addr)
 {
@@ -208,7 +208,7 @@ static void modify_fac_list(char *str)
 	check_cleared_facilities();
 }
 
-static char command_line_buf[COMMAND_LINE_SIZE] __section(.data);
+static char command_line_buf[COMMAND_LINE_SIZE] __section(".data");
 void parse_boot_command_line(void)
 {
 	char *param, *val;
diff --git a/arch/s390/boot/startup.c b/arch/s390/boot/startup.c
index 1a41545becec..596ca7cc4d7b 100644
--- a/arch/s390/boot/startup.c
+++ b/arch/s390/boot/startup.c
@@ -46,7 +46,7 @@ struct diag_ops __bootdata_preserved(diag_dma_ops) = {
 	.diag0c = _diag0c_dma,
 	.diag308_reset = _diag308_reset_dma
 };
-static struct diag210 _diag210_tmp_dma __section(.dma.data);
+static struct diag210 _diag210_tmp_dma __section(".dma.data");
 struct diag210 *__bootdata_preserved(__diag210_tmp_dma) = &_diag210_tmp_dma;
 void _swsusp_reset_dma(void);
 unsigned long __bootdata_preserved(__swsusp_reset_dma) = __pa(_swsusp_reset_dma);
diff --git a/arch/s390/include/asm/cache.h b/arch/s390/include/asm/cache.h
index d5e22e837416..00128174c025 100644
--- a/arch/s390/include/asm/cache.h
+++ b/arch/s390/include/asm/cache.h
@@ -14,6 +14,6 @@
 #define L1_CACHE_SHIFT     8
 #define NET_SKB_PAD	   32
 
-#define __read_mostly __section(.data..read_mostly)
+#define __read_mostly __section(".data..read_mostly")
 
 #endif
diff --git a/arch/s390/include/asm/sections.h b/arch/s390/include/asm/sections.h
index 42de04ad9c07..a996d3990a02 100644
--- a/arch/s390/include/asm/sections.h
+++ b/arch/s390/include/asm/sections.h
@@ -26,14 +26,14 @@ static inline int arch_is_kernel_initmem_freed(unsigned long addr)
  * final .boot.data section, which should be identical in the decompressor and
  * the decompressed kernel (that is checked during the build).
  */
-#define __bootdata(var) __section(.boot.data.var) var
+#define __bootdata(var) __section(".boot.data.var") var
 
 /*
  * .boot.preserved.data is similar to .boot.data, but it is not part of the
  * .init section and thus will be preserved for later use in the decompressed
  * kernel.
  */
-#define __bootdata_preserved(var) __section(.boot.preserved.data.var) var
+#define __bootdata_preserved(var) __section(".boot.preserved.data.var") var
 
 extern unsigned long __sdma, __edma;
 extern unsigned long __stext_dma, __etext_dma;
diff --git a/arch/s390/kernel/setup.c b/arch/s390/kernel/setup.c
index 216843fd4cf4..b24b725e7f1a 100644
--- a/arch/s390/kernel/setup.c
+++ b/arch/s390/kernel/setup.c
@@ -303,7 +303,7 @@ void machine_power_off(void)
 void (*pm_power_off)(void) = machine_power_off;
 EXPORT_SYMBOL_GPL(pm_power_off);
 
-void *restart_stack __section(.data);
+void *restart_stack __section(".data");
 
 unsigned long stack_alloc(void)
 {
diff --git a/arch/s390/mm/init.c b/arch/s390/mm/init.c
index a124f19f7b3c..8f2d6aa51281 100644
--- a/arch/s390/mm/init.c
+++ b/arch/s390/mm/init.c
@@ -47,7 +47,7 @@
 #include <asm/dma-mapping.h>
 #include <asm/uv.h>
 
-pgd_t swapper_pg_dir[PTRS_PER_PGD] __section(.bss..swapper_pg_dir);
+pgd_t swapper_pg_dir[PTRS_PER_PGD] __section(".bss..swapper_pg_dir");
 
 unsigned long empty_zero_page, zero_page_mask;
 EXPORT_SYMBOL(empty_zero_page);
diff --git a/arch/sh/boards/of-generic.c b/arch/sh/boards/of-generic.c
index d91065e81a4e..bffbe69b2236 100644
--- a/arch/sh/boards/of-generic.c
+++ b/arch/sh/boards/of-generic.c
@@ -49,7 +49,7 @@ static struct plat_smp_ops dummy_smp_ops = {
 
 extern const struct of_cpu_method __cpu_method_of_table[];
 const struct of_cpu_method __cpu_method_of_table_sentinel
-	__section(__cpu_method_of_table_end);
+	__section("__cpu_method_of_table_end");
 
 static void sh_of_smp_probe(void)
 {
diff --git a/arch/sh/include/asm/cache.h b/arch/sh/include/asm/cache.h
index 07ddf31124a3..54a4674b1a0d 100644
--- a/arch/sh/include/asm/cache.h
+++ b/arch/sh/include/asm/cache.h
@@ -15,7 +15,7 @@
 
 #define L1_CACHE_BYTES		(1 << L1_CACHE_SHIFT)
 
-#define __read_mostly __section(.data..read_mostly)
+#define __read_mostly __section(".data..read_mostly")
 
 #ifndef __ASSEMBLY__
 struct cache_info {
diff --git a/arch/sh/include/asm/machvec.h b/arch/sh/include/asm/machvec.h
index f7d05546beca..2b4b085e8f21 100644
--- a/arch/sh/include/asm/machvec.h
+++ b/arch/sh/include/asm/machvec.h
@@ -36,6 +36,6 @@ extern struct sh_machine_vector sh_mv;
 #define get_system_type()	sh_mv.mv_name
 
 #define __initmv \
-	__used __section(.machvec.init)
+	__used __section(".machvec.init")
 
 #endif /* _ASM_SH_MACHVEC_H */
diff --git a/arch/sh/include/asm/smp.h b/arch/sh/include/asm/smp.h
index 1a0d7cf71c10..448538a3d4e8 100644
--- a/arch/sh/include/asm/smp.h
+++ b/arch/sh/include/asm/smp.h
@@ -72,7 +72,7 @@ struct of_cpu_method {
 
 #define CPU_METHOD_OF_DECLARE(name, _method, _ops)			\
 	static const struct of_cpu_method __cpu_method_of_table_##name	\
-		__used __section(__cpu_method_of_table)			\
+		__used __section("__cpu_method_of_table")		\
 		= { .method = _method, .ops = _ops }
 
 #else
diff --git a/arch/sparc/include/asm/cache.h b/arch/sparc/include/asm/cache.h
index 9a9effdd01e2..e62fd0e72606 100644
--- a/arch/sparc/include/asm/cache.h
+++ b/arch/sparc/include/asm/cache.h
@@ -21,6 +21,6 @@
 
 #define SMP_CACHE_BYTES (1 << SMP_CACHE_BYTES_SHIFT)
 
-#define __read_mostly __section(.data..read_mostly)
+#define __read_mostly __section(".data..read_mostly")
 
 #endif /* !(_SPARC_CACHE_H) */
diff --git a/arch/sparc/kernel/btext.c b/arch/sparc/kernel/btext.c
index b2eff8f8f27b..e2d3f0d2971f 100644
--- a/arch/sparc/kernel/btext.c
+++ b/arch/sparc/kernel/btext.c
@@ -24,7 +24,7 @@ static void draw_byte_32(unsigned char *bits, unsigned int *base, int rb);
 static void draw_byte_16(unsigned char *bits, unsigned int *base, int rb);
 static void draw_byte_8(unsigned char *bits, unsigned int *base, int rb);
 
-#define __force_data __section(.data)
+#define __force_data __section(".data")
 
 static int g_loc_X __force_data;
 static int g_loc_Y __force_data;
diff --git a/arch/um/include/shared/init.h b/arch/um/include/shared/init.h
index c66de434a983..1a659e2e8cc3 100644
--- a/arch/um/include/shared/init.h
+++ b/arch/um/include/shared/init.h
@@ -45,15 +45,15 @@ typedef void (*exitcall_t)(void);
 
 /* These are for everybody (although not all archs will actually
    discard it in modules) */
-#define __init		__section(.init.text)
-#define __initdata	__section(.init.data)
-#define __exitdata	__section(.exit.data)
-#define __exit_call	__used __section(.exitcall.exit)
+#define __init		__section(".init.text")
+#define __initdata	__section(".init.data")
+#define __exitdata	__section(".exit.data")
+#define __exit_call	__used __section(".exitcall.exit")
 
 #ifdef MODULE
-#define __exit		__section(.exit.text)
+#define __exit		__section(".exit.text")
 #else
-#define __exit		__used __section(.exit.text)
+#define __exit		__used __section(".exit.text")
 #endif
 
 #endif
@@ -102,10 +102,10 @@ extern struct uml_param __uml_setup_start, __uml_setup_end;
  * Mark functions and data as being only used at initialization
  * or exit time.
  */
-#define __uml_init_setup	__used __section(.uml.setup.init)
-#define __uml_setup_help	__used __section(.uml.help.init)
-#define __uml_postsetup_call	__used __section(.uml.postsetup.init)
-#define __uml_exit_call		__used __section(.uml.exitcall.exit)
+#define __uml_init_setup	__used __section(".uml.setup.init")
+#define __uml_setup_help	__used __section(".uml.help.init")
+#define __uml_postsetup_call	__used __section(".uml.postsetup.init")
+#define __uml_exit_call		__used __section(".uml.exitcall.exit")
 
 #ifdef __UM_HOST__
 
@@ -120,7 +120,7 @@ extern struct uml_param __uml_setup_start, __uml_setup_end;
 
 #define __exitcall(fn) static exitcall_t __exitcall_##fn __exit_call = fn
 
-#define __init_call	__used __section(.initcall.init)
+#define __init_call	__used __section(".initcall.init")
 
 #endif
 
diff --git a/arch/um/kernel/skas/clone.c b/arch/um/kernel/skas/clone.c
index 0f25d41b1031..d715b5758851 100644
--- a/arch/um/kernel/skas/clone.c
+++ b/arch/um/kernel/skas/clone.c
@@ -21,7 +21,7 @@
  * on some systems.
  */
 
-void __attribute__ ((__section__ (".__syscall_stub")))
+void __section(".__syscall_stub")
 stub_clone_handler(void)
 {
 	struct stub_data *data = (struct stub_data *) STUB_DATA;
diff --git a/arch/um/kernel/um_arch.c b/arch/um/kernel/um_arch.c
index 18e0287dd97e..c5d6f68df1b5 100644
--- a/arch/um/kernel/um_arch.c
+++ b/arch/um/kernel/um_arch.c
@@ -52,7 +52,7 @@ struct cpuinfo_um boot_cpu_data = {
 	.ipi_pipe		= { -1, -1 }
 };
 
-union thread_union cpu0_irqstack __section(.data..init_irqstack) = {
+union thread_union cpu0_irqstack __section(".data..init_irqstack") = {
 	.thread_info = INIT_THREAD_INFO(init_task)
 };
 
diff --git a/arch/x86/boot/compressed/pgtable_64.c b/arch/x86/boot/compressed/pgtable_64.c
index c8862696a47b..968c71725492 100644
--- a/arch/x86/boot/compressed/pgtable_64.c
+++ b/arch/x86/boot/compressed/pgtable_64.c
@@ -32,7 +32,7 @@ static char trampoline_save[TRAMPOLINE_32BIT_SIZE];
  * Avoid putting the pointer into .bss as it will be cleared between
  * paging_prepare() and extract_kernel().
  */
-unsigned long *trampoline_32bit __section(.data);
+unsigned long *trampoline_32bit __section(".data");
 
 extern struct boot_params *boot_params;
 int cmdline_find_option_bool(const char *option);
diff --git a/arch/x86/boot/tty.c b/arch/x86/boot/tty.c
index 1fedabdb95ad..f7eb976b0a4b 100644
--- a/arch/x86/boot/tty.c
+++ b/arch/x86/boot/tty.c
@@ -25,7 +25,7 @@ int early_serial_base;
  * error during initialization.
  */
 
-static void __attribute__((section(".inittext"))) serial_putchar(int ch)
+static void __section(".inittext") serial_putchar(int ch)
 {
 	unsigned timeout = 0xffff;
 
@@ -35,7 +35,7 @@ static void __attribute__((section(".inittext"))) serial_putchar(int ch)
 	outb(ch, early_serial_base + TXR);
 }
 
-static void __attribute__((section(".inittext"))) bios_putchar(int ch)
+static void __section(".inittext") bios_putchar(int ch)
 {
 	struct biosregs ireg;
 
@@ -47,7 +47,7 @@ static void __attribute__((section(".inittext"))) bios_putchar(int ch)
 	intcall(0x10, &ireg, NULL);
 }
 
-void __attribute__((section(".inittext"))) putchar(int ch)
+void __section(".inittext") putchar(int ch)
 {
 	if (ch == '\n')
 		putchar('\r');	/* \n -> \r\n */
@@ -58,7 +58,7 @@ void __attribute__((section(".inittext"))) putchar(int ch)
 		serial_putchar(ch);
 }
 
-void __attribute__((section(".inittext"))) puts(const char *str)
+void __section(".inittext") puts(const char *str)
 {
 	while (*str)
 		putchar(*str++);
diff --git a/arch/x86/boot/video.h b/arch/x86/boot/video.h
index cbf7fed22441..04bde0bb2003 100644
--- a/arch/x86/boot/video.h
+++ b/arch/x86/boot/video.h
@@ -78,7 +78,7 @@ struct card_info {
 	u16 xmode_n;		/* Size of unprobed mode range */
 };
 
-#define __videocard struct card_info __attribute__((used,section(".videocards")))
+#define __videocard struct card_info __section(".videocards") __attribute__((used))
 extern struct card_info video_cards[], video_cards_end[];
 
 int mode_defined(u16 mode);	/* video.c */
diff --git a/arch/x86/include/asm/apic.h b/arch/x86/include/asm/apic.h
index 2ebc17d9c72c..da1c269854c6 100644
--- a/arch/x86/include/asm/apic.h
+++ b/arch/x86/include/asm/apic.h
@@ -372,12 +372,12 @@ extern struct apic *apic;
 #define apic_driver(sym)					\
 	static const struct apic *__apicdrivers_##sym __used		\
 	__aligned(sizeof(struct apic *))			\
-	__section(.apicdrivers) = { &sym }
+	__section(".apicdrivers") = { &sym }
 
 #define apic_drivers(sym1, sym2)					\
 	static struct apic *__apicdrivers_##sym1##sym2[2] __used	\
 	__aligned(sizeof(struct apic *))				\
-	__section(.apicdrivers) = { &sym1, &sym2 }
+	__section(".apicdrivers") = { &sym1, &sym2 }
 
 extern struct apic *__apicdrivers[], *__apicdrivers_end[];
 
diff --git a/arch/x86/include/asm/cache.h b/arch/x86/include/asm/cache.h
index bb9f4bf4ec02..69404eae9983 100644
--- a/arch/x86/include/asm/cache.h
+++ b/arch/x86/include/asm/cache.h
@@ -8,7 +8,7 @@
 #define L1_CACHE_SHIFT	(CONFIG_X86_L1_CACHE_SHIFT)
 #define L1_CACHE_BYTES	(1 << L1_CACHE_SHIFT)
 
-#define __read_mostly __section(.data..read_mostly)
+#define __read_mostly __section(".data..read_mostly")
 
 #define INTERNODE_CACHE_SHIFT CONFIG_X86_INTERNODE_CACHE_SHIFT
 #define INTERNODE_CACHE_BYTES (1 << INTERNODE_CACHE_SHIFT)
diff --git a/arch/x86/include/asm/intel-mid.h b/arch/x86/include/asm/intel-mid.h
index f51f04aefe1b..73041b7b05dd 100644
--- a/arch/x86/include/asm/intel-mid.h
+++ b/arch/x86/include/asm/intel-mid.h
@@ -43,7 +43,7 @@ struct devs_id {
 
 #define sfi_device(i)								\
 	static const struct devs_id *const __intel_mid_sfi_##i##_dev __used	\
-	__section(.x86_intel_mid_dev.init) = &i
+	__section(".x86_intel_mid_dev.init") = &i
 
 /**
 * struct mid_sd_board_info - template for SD device creation
diff --git a/arch/x86/include/asm/iommu_table.h b/arch/x86/include/asm/iommu_table.h
index 6a1a70c55ab5..3856255a3605 100644
--- a/arch/x86/include/asm/iommu_table.h
+++ b/arch/x86/include/asm/iommu_table.h
@@ -51,7 +51,7 @@ struct iommu_table_entry {
 #define __IOMMU_INIT(_detect, _depend, _early_init, _late_init, _finish)\
 	static const struct iommu_table_entry				\
 		__iommu_entry_##_detect __used __maybe_unused		\
-		__section(.iommu_table) __aligned((sizeof(void *)))	\
+		__section(".iommu_table") __aligned((sizeof(void *)))	\
 	= {_detect, _depend, _early_init, _late_init,			\
 	   _finish ? IOMMU_FINISH_IF_DETECTED : 0}
 /*
diff --git a/arch/x86/include/asm/irqflags.h b/arch/x86/include/asm/irqflags.h
index 68db90bca813..7b385e0745dc 100644
--- a/arch/x86/include/asm/irqflags.h
+++ b/arch/x86/include/asm/irqflags.h
@@ -9,7 +9,7 @@
 #include <asm/nospec-branch.h>
 
 /* Provide __cpuidle; we can't safely include <linux/cpu.h> */
-#define __cpuidle __section(.cpuidle.text)
+#define __cpuidle __section(".cpuidle.text")
 
 /*
  * Interrupt control:
diff --git a/arch/x86/include/asm/mem_encrypt.h b/arch/x86/include/asm/mem_encrypt.h
index 5f741116cb48..e55288c2c62a 100644
--- a/arch/x86/include/asm/mem_encrypt.h
+++ b/arch/x86/include/asm/mem_encrypt.h
@@ -50,7 +50,7 @@ void __init mem_encrypt_free_decrypted_mem(void);
 bool sme_active(void);
 bool sev_active(void);
 
-#define __bss_decrypted __section(.bss..decrypted)
+#define __bss_decrypted __section(".bss..decrypted")
 
 #else	/* !CONFIG_AMD_MEM_ENCRYPT */
 
diff --git a/arch/x86/include/asm/setup.h b/arch/x86/include/asm/setup.h
index ed8ec011a9fd..ff0c5e67a74b 100644
--- a/arch/x86/include/asm/setup.h
+++ b/arch/x86/include/asm/setup.h
@@ -105,7 +105,7 @@ void *extend_brk(size_t size, size_t align);
  * executable.)
  */
 #define RESERVE_BRK(name,sz)						\
-	static void __section(.discard.text) __used notrace		\
+	static void __section(".discard.text") __used notrace		\
 	__brk_reservation_fn_##name##__(void) {				\
 		asm volatile (						\
 			".pushsection .brk_reservation,\"aw\",@nobits;" \
diff --git a/arch/x86/kernel/cpu/cpu.h b/arch/x86/kernel/cpu/cpu.h
index 7ff9dc41a603..a3bb2d974f09 100644
--- a/arch/x86/kernel/cpu/cpu.h
+++ b/arch/x86/kernel/cpu/cpu.h
@@ -38,7 +38,7 @@ struct _tlb_table {
 
 #define cpu_dev_register(cpu_devX) \
 	static const struct cpu_dev *const __cpu_dev_##cpu_devX __used \
-	__section(.x86_cpu_dev.init) = &cpu_devX;
+	__section(".x86_cpu_dev.init") = &cpu_devX;
 
 extern const struct cpu_dev *const __x86_cpu_dev_start[],
 			    *const __x86_cpu_dev_end[];
diff --git a/arch/x86/kernel/head64.c b/arch/x86/kernel/head64.c
index 29ffa495bd1c..54ffd19d13c4 100644
--- a/arch/x86/kernel/head64.c
+++ b/arch/x86/kernel/head64.c
@@ -61,7 +61,7 @@ unsigned long vmemmap_base __ro_after_init = __VMEMMAP_BASE_L4;
 EXPORT_SYMBOL(vmemmap_base);
 #endif
 
-#define __head	__section(.head.text)
+#define __head	__section(".head.text")
 
 static void __head *fixup_pointer(void *ptr, unsigned long physaddr)
 {
diff --git a/arch/x86/mm/mem_encrypt.c b/arch/x86/mm/mem_encrypt.c
index 9268c12458c8..9b47982fce68 100644
--- a/arch/x86/mm/mem_encrypt.c
+++ b/arch/x86/mm/mem_encrypt.c
@@ -37,12 +37,12 @@
  * reside in the .data section so as not to be zeroed out when the .bss
  * section is later cleared.
  */
-u64 sme_me_mask __section(.data) = 0;
+u64 sme_me_mask __section(".data") = 0;
 EXPORT_SYMBOL(sme_me_mask);
 DEFINE_STATIC_KEY_FALSE(sev_enable_key);
 EXPORT_SYMBOL_GPL(sev_enable_key);
 
-bool sev_enabled __section(.data);
+bool sev_enabled __section(".data");
 
 /* Buffer used for early in-place encryption by BSP, no locking needed */
 static char sme_early_buffer[PAGE_SIZE] __initdata __aligned(PAGE_SIZE);
diff --git a/arch/x86/mm/mem_encrypt_identity.c b/arch/x86/mm/mem_encrypt_identity.c
index e2b0e2ac07bb..afe8557860a9 100644
--- a/arch/x86/mm/mem_encrypt_identity.c
+++ b/arch/x86/mm/mem_encrypt_identity.c
@@ -81,7 +81,7 @@ struct sme_populate_pgd_data {
  * section is 2MB aligned to allow for simple pagetable setup using only
  * PMD entries (see vmlinux.lds.S).
  */
-static char sme_workarea[2 * PMD_PAGE_SIZE] __section(.init.scratch);
+static char sme_workarea[2 * PMD_PAGE_SIZE] __section(".init.scratch");
 
 static char sme_cmdline_arg[] __initdata = "mem_encrypt";
 static char sme_cmdline_on[]  __initdata = "on";
diff --git a/arch/x86/platform/pvh/enlighten.c b/arch/x86/platform/pvh/enlighten.c
index c0a502f7e3a7..9ac7457f52a3 100644
--- a/arch/x86/platform/pvh/enlighten.c
+++ b/arch/x86/platform/pvh/enlighten.c
@@ -19,8 +19,8 @@
  * pvh_bootparams and pvh_start_info need to live in the data segment since
  * they are used after startup_{32|64}, which clear .bss, are invoked.
  */
-struct boot_params pvh_bootparams __attribute__((section(".data")));
-struct hvm_start_info pvh_start_info __attribute__((section(".data")));
+struct boot_params pvh_bootparams __section(".data");
+struct hvm_start_info pvh_start_info __section(".data");
 
 unsigned int pvh_start_info_sz = sizeof(pvh_start_info);
 
diff --git a/arch/x86/purgatory/purgatory.c b/arch/x86/purgatory/purgatory.c
index 7f90a86eff49..5353f7e64a35 100644
--- a/arch/x86/purgatory/purgatory.c
+++ b/arch/x86/purgatory/purgatory.c
@@ -14,13 +14,13 @@
 
 #include "../boot/string.h"
 
-unsigned long purgatory_backup_dest __section(.kexec-purgatory);
-unsigned long purgatory_backup_src __section(.kexec-purgatory);
-unsigned long purgatory_backup_sz __section(.kexec-purgatory);
+unsigned long purgatory_backup_dest __section(".kexec-purgatory");
+unsigned long purgatory_backup_src __section(".kexec-purgatory");
+unsigned long purgatory_backup_sz __section(".kexec-purgatory");
 
-u8 purgatory_sha256_digest[SHA256_DIGEST_SIZE] __section(.kexec-purgatory);
+u8 purgatory_sha256_digest[SHA256_DIGEST_SIZE] __section(".kexec-purgatory");
 
-struct kexec_sha_region purgatory_sha_regions[KEXEC_SEGMENT_MAX] __section(.kexec-purgatory);
+struct kexec_sha_region purgatory_sha_regions[KEXEC_SEGMENT_MAX] __section(".kexec-purgatory");
 
 /*
  * On x86, second kernel requries first 640K of memory to boot. Copy
diff --git a/arch/x86/um/stub_segv.c b/arch/x86/um/stub_segv.c
index 27361cbb7ca9..fdcd58af707a 100644
--- a/arch/x86/um/stub_segv.c
+++ b/arch/x86/um/stub_segv.c
@@ -8,7 +8,7 @@
 #include <sysdep/mcontext.h>
 #include <sys/ucontext.h>
 
-void __attribute__ ((__section__ (".__syscall_stub")))
+void __section(".__syscall_stub")
 stub_segv_handler(int sig, siginfo_t *info, void *p)
 {
 	ucontext_t *uc = p;
diff --git a/arch/x86/xen/enlighten.c b/arch/x86/xen/enlighten.c
index 750f46ad018a..9a1e090c9a8b 100644
--- a/arch/x86/xen/enlighten.c
+++ b/arch/x86/xen/enlighten.c
@@ -71,7 +71,7 @@ EXPORT_SYMBOL_GPL(xen_have_vector_callback);
  * NB: needs to live in .data because it's used by xen_prepare_pvh which runs
  * before clearing the bss.
  */
-uint32_t xen_start_flags __attribute__((section(".data"))) = 0;
+uint32_t xen_start_flags __section(".data") = 0;
 EXPORT_SYMBOL(xen_start_flags);
 
 /*
diff --git a/arch/x86/xen/enlighten_pvh.c b/arch/x86/xen/enlighten_pvh.c
index 80a79db72fcf..0d5e34b9e6f9 100644
--- a/arch/x86/xen/enlighten_pvh.c
+++ b/arch/x86/xen/enlighten_pvh.c
@@ -21,7 +21,7 @@
  * The variable xen_pvh needs to live in the data segment since it is used
  * after startup_{32|64} is invoked, which will clear the .bss segment.
  */
-bool xen_pvh __attribute__((section(".data"))) = 0;
+bool xen_pvh __section(".data") = 0;
 
 void __init xen_pvh_init(struct boot_params *boot_params)
 {
diff --git a/arch/xtensa/kernel/setup.c b/arch/xtensa/kernel/setup.c
index e0e1e1892b86..6203d8eea03e 100644
--- a/arch/xtensa/kernel/setup.c
+++ b/arch/xtensa/kernel/setup.c
@@ -94,7 +94,7 @@ typedef struct tagtable {
 } tagtable_t;
 
 #define __tagtable(tag, fn) static tagtable_t __tagtable_##fn 		\
-	__attribute__((used, section(".taglist"))) = { tag, fn }
+	__section(".taglist") __attribute__((used)) = { tag, fn }
 
 /* parse current tag */
 
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 2ba52b8dafcc..6b68b7b4d000 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -4161,7 +4161,7 @@ struct of_clk_provider {
 
 extern struct of_device_id __clk_of_table;
 static const struct of_device_id __clk_of_table_sentinel
-	__used __section(__clk_of_table_end);
+	__used __section("__clk_of_table_end");
 
 static LIST_HEAD(of_clk_providers);
 static DEFINE_MUTEX(of_clk_mutex);
diff --git a/drivers/clocksource/timer-probe.c b/drivers/clocksource/timer-probe.c
index ee9574da53c0..b7860bc0db4b 100644
--- a/drivers/clocksource/timer-probe.c
+++ b/drivers/clocksource/timer-probe.c
@@ -11,7 +11,7 @@
 extern struct of_device_id __timer_of_table[];
 
 static const struct of_device_id __timer_of_table_sentinel
-	__used __section(__timer_of_table_end);
+	__used __section("__timer_of_table_end");
 
 void __init timer_probe(void)
 {
diff --git a/drivers/firmware/efi/libstub/efi-stub-helper.c b/drivers/firmware/efi/libstub/efi-stub-helper.c
index 3caae7f2cf56..f24df731008c 100644
--- a/drivers/firmware/efi/libstub/efi-stub-helper.c
+++ b/drivers/firmware/efi/libstub/efi-stub-helper.c
@@ -29,9 +29,9 @@
 
 static unsigned long __chunk_size = EFI_READ_CHUNK_SIZE;
 
-static int __section(.data) __nokaslr;
-static int __section(.data) __quiet;
-static int __section(.data) __novamap;
+static int __section(".data") __nokaslr;
+static int __section(".data") __quiet;
+static int __section(".data") __novamap;
 
 int __pure nokaslr(void)
 {
diff --git a/drivers/irqchip/irqchip.c b/drivers/irqchip/irqchip.c
index 2b35e68bea82..3c06fbe7d692 100644
--- a/drivers/irqchip/irqchip.c
+++ b/drivers/irqchip/irqchip.c
@@ -20,7 +20,7 @@
  * special section.
  */
 static const struct of_device_id
-irqchip_of_match_end __used __section(__irqchip_of_table_end);
+irqchip_of_match_end __used __section("__irqchip_of_table_end");
 
 extern struct of_device_id __irqchip_of_table[];
 
diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index 7989703b883c..136b5c8d4450 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -162,7 +162,7 @@ static int __init __reserved_mem_alloc_size(unsigned long node,
 }
 
 static const struct of_device_id __rmem_of_table_sentinel
-	__used __section(__reservedmem_of_table_end);
+	__used __section("__reservedmem_of_table_end");
 
 /**
  * res_mem_init_node() - call region specific reserved memory init code
diff --git a/drivers/s390/char/sclp_early_core.c b/drivers/s390/char/sclp_early_core.c
index 7737470f8498..fab99d8bc767 100644
--- a/drivers/s390/char/sclp_early_core.c
+++ b/drivers/s390/char/sclp_early_core.c
@@ -17,12 +17,12 @@
 static struct read_info_sccb __bootdata(sclp_info_sccb);
 static int __bootdata(sclp_info_sccb_valid);
 char *sclp_early_sccb = (char *) EARLY_SCCB_OFFSET;
-int sclp_init_state __section(.data) = sclp_init_state_uninitialized;
+int sclp_init_state __section(".data") = sclp_init_state_uninitialized;
 /*
  * Used to keep track of the size of the event masks. Qemu until version 2.11
  * only supports 4 and needs a workaround.
  */
-bool sclp_mask_compat_mode __section(.data);
+bool sclp_mask_compat_mode __section(".data");
 
 void sclp_early_wait_irq(void)
 {
diff --git a/drivers/thermal/thermal_core.h b/drivers/thermal/thermal_core.h
index 207b0cda70da..1b7cda17c34e 100644
--- a/drivers/thermal/thermal_core.h
+++ b/drivers/thermal/thermal_core.h
@@ -21,7 +21,7 @@ extern struct thermal_governor *__governor_thermal_table_end[];
 
 #define THERMAL_TABLE_ENTRY(table, name)			\
 	static typeof(name) *__thermal_table_entry_##name	\
-	__used __section(__##table##_thermal_table) = &name
+	__used __section("__" ## table ## "_thermal_table") = &name
 
 #define THERMAL_GOVERNOR_DECLARE(name)	THERMAL_TABLE_ENTRY(governor, name)
 
diff --git a/include/asm-generic/bug.h b/include/asm-generic/bug.h
index 384b5c835ced..76b0fc545b89 100644
--- a/include/asm-generic/bug.h
+++ b/include/asm-generic/bug.h
@@ -135,7 +135,7 @@ void __warn(const char *file, int line, void *caller, unsigned taint,
 
 #ifndef WARN_ON_ONCE
 #define WARN_ON_ONCE(condition)	({				\
-	static bool __section(.data.once) __warned;		\
+	static bool __section(".data.once") __warned;		\
 	int __ret_warn_once = !!(condition);			\
 								\
 	if (unlikely(__ret_warn_once && !__warned)) {		\
@@ -147,7 +147,7 @@ void __warn(const char *file, int line, void *caller, unsigned taint,
 #endif
 
 #define WARN_ONCE(condition, format...)	({			\
-	static bool __section(.data.once) __warned;		\
+	static bool __section(".data.once") __warned;		\
 	int __ret_warn_once = !!(condition);			\
 								\
 	if (unlikely(__ret_warn_once && !__warned)) {		\
@@ -158,7 +158,7 @@ void __warn(const char *file, int line, void *caller, unsigned taint,
 })
 
 #define WARN_TAINT_ONCE(condition, taint, format...)	({	\
-	static bool __section(.data.once) __warned;		\
+	static bool __section(".data.once") __warned;		\
 	int __ret_warn_once = !!(condition);			\
 								\
 	if (unlikely(__ret_warn_once && !__warned)) {		\
diff --git a/include/asm-generic/error-injection.h b/include/asm-generic/error-injection.h
index 30bd9dcab52d..7ddd9dc10ce9 100644
--- a/include/asm-generic/error-injection.h
+++ b/include/asm-generic/error-injection.h
@@ -25,7 +25,7 @@ struct pt_regs;
  */
 #define ALLOW_ERROR_INJECTION(fname, _etype)				\
 static struct error_injection_entry __used				\
-	__section(_error_injection_whitelist)				\
+	__section("_error_injection_whitelist")				\
 	_eil_addr_##fname = {						\
 		.addr = (unsigned long)fname,				\
 		.etype = EI_ETYPE_##_etype,				\
diff --git a/include/asm-generic/kprobes.h b/include/asm-generic/kprobes.h
index 20d69719270f..380cc06b7478 100644
--- a/include/asm-generic/kprobes.h
+++ b/include/asm-generic/kprobes.h
@@ -9,11 +9,11 @@
  * by using this macro.
  */
 # define __NOKPROBE_SYMBOL(fname)				\
-static unsigned long __used __section(_kprobe_blacklist)	\
+static unsigned long __used __section("_kprobe_blacklist")	\
 	_kbl_addr_##fname = (unsigned long)fname;
 # define NOKPROBE_SYMBOL(fname)	__NOKPROBE_SYMBOL(fname)
 /* Use this to forbid a kprobes attach on very low level functions */
-# define __kprobes	__section(.kprobes.text)
+# define __kprobes	__section(".kprobes.text")
 # define nokprobe_inline	__always_inline
 #else
 # define NOKPROBE_SYMBOL(fname)
diff --git a/include/linux/acpi.h b/include/linux/acpi.h
index 8b4e516bac00..24c1293d8717 100644
--- a/include/linux/acpi.h
+++ b/include/linux/acpi.h
@@ -1094,7 +1094,7 @@ struct acpi_probe_entry {
 
 #define ACPI_DECLARE_PROBE_ENTRY(table, name, table_id, subtable, valid, data, fn)	\
 	static const struct acpi_probe_entry __acpi_probe_##name	\
-		__used __section(__##table##_acpi_probe_table)		\
+		__used __section("__" ## table ## "_acpi_probe_table")	\
 		 = {							\
 			.id = table_id,					\
 			.type = subtable,				\
diff --git a/include/linux/cache.h b/include/linux/cache.h
index 3f4df9eef1e1..72286e278abe 100644
--- a/include/linux/cache.h
+++ b/include/linux/cache.h
@@ -28,7 +28,7 @@
  * but may get written to during init, so can't live in .rodata (via "const").
  */
 #ifndef __ro_after_init
-#define __ro_after_init __section(.data..ro_after_init)
+#define __ro_after_init __section(".data..ro_after_init")
 #endif
 
 #ifndef ____cacheline_aligned
@@ -46,7 +46,7 @@
 #ifndef __cacheline_aligned
 #define __cacheline_aligned					\
 	__aligned(SMP_CACHE_BYTES)				\
-	__section(.data..cacheline_aligned)
+	__section(".data..cacheline_aligned")
 #endif /* __cacheline_aligned */
 
 #ifndef __cacheline_aligned_in_smp
diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index f01c1e527f85..04417730963f 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -24,7 +24,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
 			long ______r;					\
 			static struct ftrace_likely_data		\
 				__aligned(4)				\
-				__section(_ftrace_annotated_branch)	\
+				__section("_ftrace_annotated_branch")	\
 				______f = {				\
 				.data.func = __func__,			\
 				.data.file = __FILE__,			\
@@ -60,7 +60,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
 #define __trace_if_value(cond) ({			\
 	static struct ftrace_branch_data		\
 		__aligned(4)				\
-		__section(_ftrace_branch)		\
+		__section("_ftrace_branch")		\
 		__if_trace = {				\
 			.func = __func__,		\
 			.file = __FILE__,		\
@@ -118,7 +118,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
 	".popsection\n\t"
 
 /* Annotate a C jump table to allow objtool to follow the code flow */
-#define __annotate_jump_table __section(.rodata..c_jump_table)
+#define __annotate_jump_table __section(".rodata..c_jump_table")
 
 #else
 #define annotate_reachable()
@@ -275,7 +275,7 @@ unsigned long read_word_at_a_time(const void *addr)
  * visible to the compiler.
  */
 #define __ADDRESSABLE(sym) \
-	static void * __section(.discard.addressable) __used \
+	static void * __section(".discard.addressable") __used \
 		__PASTE(__addressable_##sym, __LINE__) = (void *)&sym;
 
 /**
diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
index 9ca040fa1cc6..88d3eea1cbba 100644
--- a/include/linux/compiler_attributes.h
+++ b/include/linux/compiler_attributes.h
@@ -225,21 +225,11 @@
 #define __pure                          __attribute__((__pure__))
 
 /*
- * Note: Since this macro makes use of the "stringification operator" `#`,
- * a quoted string literal should not be passed to it. eg. prefer:
- *     __section(.foo)
- * to:
- *     __section(".foo")
- * unless the section name is dynamically built up, in which case the
- * verbose __attribute__((__section__(".foo" x))) should be preferred.
- *
- * See also: https://bugs.llvm.org/show_bug.cgi?id=42950
- *
  *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-section-function-attribute
  *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Variable-Attributes.html#index-section-variable-attribute
  * clang: https://clang.llvm.org/docs/AttributeReference.html#section-declspec-allocate
  */
-#define __section(S)                    __attribute__((__section__(#S)))
+#define __section(section)              __attribute__((__section__(section)))
 
 /*
  *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-unused-function-attribute
diff --git a/include/linux/cpu.h b/include/linux/cpu.h
index 186bbd79d6ce..7d874d8fc845 100644
--- a/include/linux/cpu.h
+++ b/include/linux/cpu.h
@@ -166,7 +166,7 @@ void cpu_startup_entry(enum cpuhp_state state);
 void cpu_idle_poll_ctrl(bool enable);
 
 /* Attach to any functions which should be considered cpuidle. */
-#define __cpuidle	__section(.cpuidle.text)
+#define __cpuidle	__section(".cpuidle.text")
 
 bool cpu_in_idle(unsigned long pc);
 
diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debug.h
index 6c809440f319..1d1c355cf63f 100644
--- a/include/linux/dynamic_debug.h
+++ b/include/linux/dynamic_debug.h
@@ -80,7 +80,7 @@ void __dynamic_ibdev_dbg(struct _ddebug *descriptor,
 
 #define DEFINE_DYNAMIC_DEBUG_METADATA(name, fmt)		\
 	static struct _ddebug  __aligned(8)			\
-	__attribute__((section("__verbose"))) name = {		\
+	__section("__verbose") name = {				\
 		.modname = KBUILD_MODNAME,			\
 		.function = __func__,				\
 		.filename = __FILE__,				\
diff --git a/include/linux/export.h b/include/linux/export.h
index 808c1a0c2ef9..0a39a528b7a0 100644
--- a/include/linux/export.h
+++ b/include/linux/export.h
@@ -79,7 +79,7 @@ struct kernel_symbol {
 	extern typeof(sym) sym;						\
 	__CRC_SYMBOL(sym, sec)						\
 	static const char __kstrtab_##sym[]				\
-	__attribute__((section("__ksymtab_strings"), used, aligned(1)))	\
+	__section("__ksymtab_strings") __attribute__((used, aligned(1)))\
 	= #sym;								\
 	__KSYMTAB_ENTRY(sym, sec)
 
@@ -104,7 +104,7 @@ struct kernel_symbol {
  * discarded in the final link stage.
  */
 #define __ksym_marker(sym)	\
-	static int __ksym_marker_##sym[0] __section(.discard.ksym) __used
+	static int __ksym_marker_##sym[0] __section(".discard.ksym") __used
 
 #define __EXPORT_SYMBOL(sym, sec)				\
 	__ksym_marker(sym);					\
diff --git a/include/linux/firmware.h b/include/linux/firmware.h
index 2dd566c91d44..ba31f2f893a1 100644
--- a/include/linux/firmware.h
+++ b/include/linux/firmware.h
@@ -37,7 +37,7 @@ struct builtin_fw {
 
 #define DECLARE_BUILTIN_FIRMWARE_SIZE(name, blob, size)			     \
 	static const struct builtin_fw __fw_concat(__builtin_fw,__COUNTER__) \
-	__used __section(.builtin_fw) = { name, blob, size }
+	__used __section(".builtin_fw") = { name, blob, size }
 
 #if defined(CONFIG_FW_LOADER) || (defined(CONFIG_FW_LOADER_MODULE) && defined(MODULE))
 int request_firmware(const struct firmware **fw, const char *name,
diff --git a/include/linux/frame.h b/include/linux/frame.h
index 02d3ca2d9598..6d19d27dab4e 100644
--- a/include/linux/frame.h
+++ b/include/linux/frame.h
@@ -12,7 +12,7 @@
  * For more information, see tools/objtool/Documentation/stack-validation.txt.
  */
 #define STACK_FRAME_NON_STANDARD(func) \
-	static void __used __section(.discard.func_stack_frame_non_standard) \
+	static void __used __section(".discard.func_stack_frame_non_standard") \
 		*__func_stack_frame_non_standard_##func = func
 
 #else /* !CONFIG_STACK_VALIDATION */
diff --git a/include/linux/init.h b/include/linux/init.h
index 212fc9e2f691..7b53cb3092ee 100644
--- a/include/linux/init.h
+++ b/include/linux/init.h
@@ -47,11 +47,11 @@
 
 /* These are for everybody (although not all archs will actually
    discard it in modules) */
-#define __init		__section(.init.text) __cold  __latent_entropy __noinitretpoline
-#define __initdata	__section(.init.data)
-#define __initconst	__section(.init.rodata)
-#define __exitdata	__section(.exit.data)
-#define __exit_call	__used __section(.exitcall.exit)
+#define __init		__section(".init.text") __cold  __latent_entropy __noinitretpoline
+#define __initdata	__section(".init.data")
+#define __initconst	__section(".init.rodata")
+#define __exitdata	__section(".exit.data")
+#define __exit_call	__used __section(".exitcall.exit")
 
 /*
  * modpost check for section mismatches during the kernel build.
@@ -70,9 +70,9 @@
  *
  * The markers follow same syntax rules as __init / __initdata.
  */
-#define __ref            __section(.ref.text) noinline
-#define __refdata        __section(.ref.data)
-#define __refconst       __section(.ref.rodata)
+#define __ref            __section(".ref.text") noinline
+#define __refdata        __section(".ref.data")
+#define __refconst       __section(".ref.rodata")
 
 #ifdef MODULE
 #define __exitused
@@ -80,16 +80,16 @@
 #define __exitused  __used
 #endif
 
-#define __exit          __section(.exit.text) __exitused __cold notrace
+#define __exit          __section(".exit.text") __exitused __cold notrace
 
 /* Used for MEMORY_HOTPLUG */
-#define __meminit        __section(.meminit.text) __cold notrace \
+#define __meminit        __section(".meminit.text") __cold notrace \
 						  __latent_entropy
-#define __meminitdata    __section(.meminit.data)
-#define __meminitconst   __section(.meminit.rodata)
-#define __memexit        __section(.memexit.text) __exitused __cold notrace
-#define __memexitdata    __section(.memexit.data)
-#define __memexitconst   __section(.memexit.rodata)
+#define __meminitdata    __section(".meminit.data")
+#define __meminitconst   __section(".meminit.rodata")
+#define __memexit        __section(".memexit.text") __exitused __cold notrace
+#define __memexitdata    __section(".memexit.data")
+#define __memexitconst   __section(".memexit.rodata")
 
 /* For assembly routines */
 #define __HEAD		.section	".head.text","ax"
@@ -254,7 +254,7 @@ struct obs_kernel_param {
 	static const char __setup_str_##unique_id[] __initconst		\
 		__aligned(1) = str; 					\
 	static struct obs_kernel_param __setup_##unique_id		\
-		__used __section(.init.setup)				\
+		__used __section(".init.setup")				\
 		__attribute__((aligned((sizeof(long)))))		\
 		= { __setup_str_##unique_id, fn, early }
 
@@ -298,7 +298,7 @@ void __init parse_early_options(char *cmdline);
 #endif
 
 /* Data marked not to be saved by software suspend */
-#define __nosavedata __section(.data..nosave)
+#define __nosavedata __section(".data..nosave")
 
 #ifdef MODULE
 #define __exit_p(x) x
diff --git a/include/linux/init_task.h b/include/linux/init_task.h
index 1f8ee80e0e20..b2412b4d4c20 100644
--- a/include/linux/init_task.h
+++ b/include/linux/init_task.h
@@ -40,12 +40,12 @@ extern struct cred init_cred;
 
 /* Attach to the init_task data structure for proper alignment */
 #ifdef CONFIG_ARCH_TASK_STRUCT_ON_STACK
-#define __init_task_data __section(.data..init_task)
+#define __init_task_data __section(".data..init_task")
 #else
 #define __init_task_data /**/
 #endif
 
 /* Attach to the thread_info data structure for proper alignment */
-#define __init_thread_info __section(.data..init_thread_info)
+#define __init_thread_info __section(".data..init_thread_info")
 
 #endif
diff --git a/include/linux/interrupt.h b/include/linux/interrupt.h
index 3decd798a58c..03c3028f0a19 100644
--- a/include/linux/interrupt.h
+++ b/include/linux/interrupt.h
@@ -746,7 +746,7 @@ extern int arch_early_irq_init(void);
 /*
  * We want to know which function is an entrypoint of a hardirq or a softirq.
  */
-#define __irq_entry	__section(.irqentry.text)
-#define __softirq_entry	__section(.softirqentry.text)
+#define __irq_entry	__section(".irqentry.text")
+#define __softirq_entry	__section(".softirqentry.text")
 
 #endif
diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 4fa360a13c1e..927056b7aded 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -700,7 +700,7 @@ do {							\
 #define do_trace_printk(fmt, args...)					\
 do {									\
 	static const char *trace_printk_fmt __used			\
-		__attribute__((section("__trace_printk_fmt"))) =	\
+		__section("__trace_printk_fmt") =			\
 		__builtin_constant_p(fmt) ? fmt : NULL;			\
 									\
 	__trace_printk_check_format(fmt, ##args);			\
@@ -744,7 +744,7 @@ int __trace_printk(unsigned long ip, const char *fmt, ...);
 
 #define trace_puts(str) ({						\
 	static const char *trace_printk_fmt __used			\
-		__attribute__((section("__trace_printk_fmt"))) =	\
+		__section("__trace_printk_fmt") =			\
 		__builtin_constant_p(str) ? str : NULL;			\
 									\
 	if (__builtin_constant_p(str))					\
@@ -766,7 +766,7 @@ extern void trace_dump_stack(int skip);
 do {									\
 	if (__builtin_constant_p(fmt)) {				\
 		static const char *trace_printk_fmt __used		\
-		  __attribute__((section("__trace_printk_fmt"))) =	\
+		  __section("__trace_printk_fmt") =			\
 			__builtin_constant_p(fmt) ? fmt : NULL;		\
 									\
 		__ftrace_vbprintk(_THIS_IP_, trace_printk_fmt, vargs);	\
diff --git a/include/linux/linkage.h b/include/linux/linkage.h
index 7e020782ade2..e10b80a75202 100644
--- a/include/linux/linkage.h
+++ b/include/linux/linkage.h
@@ -36,8 +36,8 @@
 		  __stringify(name))
 #endif
 
-#define __page_aligned_data	__section(.data..page_aligned) __aligned(PAGE_SIZE)
-#define __page_aligned_bss	__section(.bss..page_aligned) __aligned(PAGE_SIZE)
+#define __page_aligned_data	__section(".data..page_aligned") __aligned(PAGE_SIZE)
+#define __page_aligned_bss	__section(".bss..page_aligned") __aligned(PAGE_SIZE)
 
 /*
  * For assembly routines.
diff --git a/include/linux/lsm_hooks.h b/include/linux/lsm_hooks.h
index 8e1cbc27fc62..7a8b43a9bc1c 100644
--- a/include/linux/lsm_hooks.h
+++ b/include/linux/lsm_hooks.h
@@ -2160,12 +2160,12 @@ extern struct lsm_info __start_early_lsm_info[], __end_early_lsm_info[];
 
 #define DEFINE_LSM(lsm)							\
 	static struct lsm_info __lsm_##lsm				\
-		__used __section(.lsm_info.init)			\
+		__used __section(".lsm_info.init")			\
 		__aligned(sizeof(unsigned long))
 
 #define DEFINE_EARLY_LSM(lsm)						\
 	static struct lsm_info __early_lsm_##lsm			\
-		__used __section(.early_lsm_info.init)			\
+		__used __section(".early_lsm_info.init")		\
 		__aligned(sizeof(unsigned long))
 
 #ifdef CONFIG_SECURITY_SELINUX_DISABLE
diff --git a/include/linux/module.h b/include/linux/module.h
index f6fc1dae74f4..8af675b9e665 100644
--- a/include/linux/module.h
+++ b/include/linux/module.h
@@ -264,7 +264,7 @@ extern typeof(name) __mod_##type##__##name##_device_table		\
 		.version	= _version,				\
 	};								\
 	static const struct module_version_attribute			\
-	__used __attribute__ ((__section__ ("__modver")))		\
+	__used __section("__modver")					\
 	* __moduleparam_const __modver_attr = &___modver_attr
 #endif
 
diff --git a/include/linux/moduleparam.h b/include/linux/moduleparam.h
index 5ba250d9172a..b420aa4c54e0 100644
--- a/include/linux/moduleparam.h
+++ b/include/linux/moduleparam.h
@@ -22,7 +22,7 @@
 
 #define __MODULE_INFO(tag, name, info)					  \
 static const char __UNIQUE_ID(name)[]					  \
-  __used __attribute__((section(".modinfo"), unused, aligned(1)))	  \
+  __used __section(".modinfo") __attribute__((unused, aligned(1)))	  \
   = __MODULE_INFO_PREFIX __stringify(tag) "=" info
 
 #define __MODULE_PARM_TYPE(name, _type)					  \
@@ -221,7 +221,7 @@ struct kparam_array
 	static const char __param_str_##name[] = prefix #name;		\
 	static struct kernel_param __moduleparam_const __param_##name	\
 	__used								\
-    __attribute__ ((unused,__section__ ("__param"),aligned(sizeof(void *)))) \
+    __section("__param") __attribute__ ((unused, aligned(sizeof(void *)))) \
 	= { __param_str_##name, THIS_MODULE, ops,			\
 	    VERIFY_OCTAL_PERMISSIONS(perm), level, flags, { arg } }
 
diff --git a/include/linux/mtd/xip.h b/include/linux/mtd/xip.h
index a4e352b1dfe6..3cac9360588f 100644
--- a/include/linux/mtd/xip.h
+++ b/include/linux/mtd/xip.h
@@ -28,7 +28,7 @@
  * those functions so they get relocated to ram.
  */
 #ifdef CONFIG_XIP_KERNEL
-#define __xipram noinline __attribute__ ((__section__ (".xiptext")))
+#define __xipram noinline __section(".xiptext")
 #endif
 
 /*
diff --git a/include/linux/of.h b/include/linux/of.h
index 844f89e1b039..71e74771ce35 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -1281,7 +1281,7 @@ static inline int of_get_available_child_count(const struct device_node *np)
 #if defined(CONFIG_OF) && !defined(MODULE)
 #define _OF_DECLARE(table, name, compat, fn, fn_type)			\
 	static const struct of_device_id __of_table_##name		\
-		__used __section(__##table##_of_table)			\
+		__used __section("__" ## table ## "_of_table")		\
 		 = { .compatible = compat,				\
 		     .data = (fn == (fn_type)NULL) ? fn : fn  }
 #else
diff --git a/include/linux/percpu-defs.h b/include/linux/percpu-defs.h
index a6fabd865211..c344b3177005 100644
--- a/include/linux/percpu-defs.h
+++ b/include/linux/percpu-defs.h
@@ -51,7 +51,7 @@
 	PER_CPU_ATTRIBUTES
 
 #define __PCPU_DUMMY_ATTRS						\
-	__attribute__((section(".discard"), unused))
+	__section(".discard") __attribute__((unused))
 
 /*
  * s390 and alpha modules require percpu variables to be defined as
diff --git a/include/linux/printk.h b/include/linux/printk.h
index c09d67edda3a..290a8a94fbf5 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -349,7 +349,7 @@ extern int kptr_restrict;
 #ifdef CONFIG_PRINTK
 #define printk_once(fmt, ...)					\
 ({								\
-	static bool __section(.data.once) __print_once;		\
+	static bool __section(".data.once") __print_once;	\
 	bool __ret_print_once = !__print_once;			\
 								\
 	if (!__print_once) {					\
@@ -360,7 +360,7 @@ extern int kptr_restrict;
 })
 #define printk_deferred_once(fmt, ...)				\
 ({								\
-	static bool __section(.data.once) __print_once;		\
+	static bool __section(".data.once") __print_once;	\
 	bool __ret_print_once = !__print_once;			\
 								\
 	if (!__print_once) {					\
diff --git a/include/linux/rcupdate.h b/include/linux/rcupdate.h
index 75a2eded7aa2..07852adee0c9 100644
--- a/include/linux/rcupdate.h
+++ b/include/linux/rcupdate.h
@@ -259,7 +259,7 @@ static inline int rcu_read_lock_any_held(void)
  */
 #define RCU_LOCKDEP_WARN(c, s)						\
 	do {								\
-		static bool __section(.data.unlikely) __warned;		\
+		static bool __section(".data.unlikely") __warned;	\
 		if (debug_lockdep_rcu_enabled() && !__warned && (c)) {	\
 			__warned = true;				\
 			lockdep_rcu_suspicious(__FILE__, __LINE__, s);	\
diff --git a/include/linux/sched/debug.h b/include/linux/sched/debug.h
index e17b66221fdd..10b686325b6f 100644
--- a/include/linux/sched/debug.h
+++ b/include/linux/sched/debug.h
@@ -42,7 +42,7 @@ extern void proc_sched_set_task(struct task_struct *p);
 #endif
 
 /* Attach to any functions which should be ignored in wchan output. */
-#define __sched		__section(.sched.text)
+#define __sched		__section(".sched.text")
 
 /* Linker adds these: start and end of __sched functions */
 extern char __sched_text_start[], __sched_text_end[];
diff --git a/include/linux/serial_core.h b/include/linux/serial_core.h
index 2b78cc734719..b0f8b3d9b247 100644
--- a/include/linux/serial_core.h
+++ b/include/linux/serial_core.h
@@ -370,7 +370,7 @@ extern const struct earlycon_id *__earlycon_table_end[];
 		    .compatible = compat,				\
 		    .setup = fn  };					\
 	static const struct earlycon_id EARLYCON_USED_OR_UNUSED		\
-		__section(__earlycon_table)				\
+		__section("__earlycon_table")				\
 		* const __PASTE(__p, unique_id) = &unique_id
 
 #define OF_EARLYCON_DECLARE(_name, compat, fn)				\
diff --git a/include/linux/spinlock.h b/include/linux/spinlock.h
index 031ce8617df8..45ee3edf17af 100644
--- a/include/linux/spinlock.h
+++ b/include/linux/spinlock.h
@@ -75,7 +75,7 @@
 #define LOCK_SECTION_END                        \
         ".previous\n\t"
 
-#define __lockfunc __attribute__((section(".spinlock.text")))
+#define __lockfunc __section(".spinlock.text")
 
 /*
  * Pull the arch_spinlock_t and arch_rwlock_t definitions:
diff --git a/include/linux/srcutree.h b/include/linux/srcutree.h
index 9de652f4e1bd..9cfcc8a756ae 100644
--- a/include/linux/srcutree.h
+++ b/include/linux/srcutree.h
@@ -124,7 +124,7 @@ struct srcu_struct {
 # define __DEFINE_SRCU(name, is_static)					\
 	is_static struct srcu_struct name;				\
 	struct srcu_struct * const __srcu_struct_##name			\
-		__section(___srcu_struct_ptrs) = &name
+		__section("___srcu_struct_ptrs") = &name
 #else
 # define __DEFINE_SRCU(name, is_static)					\
 	static DEFINE_PER_CPU(struct srcu_data, name##_srcu_data);	\
diff --git a/include/linux/syscalls.h b/include/linux/syscalls.h
index 5bac5daec51e..139afb8a244b 100644
--- a/include/linux/syscalls.h
+++ b/include/linux/syscalls.h
@@ -145,7 +145,7 @@ extern struct trace_event_functions exit_syscall_print_funcs;
 		.flags                  = TRACE_EVENT_FL_CAP_ANY,	\
 	};								\
 	static struct trace_event_call __used				\
-	  __attribute__((section("_ftrace_events")))			\
+	  __section("_ftrace_events")					\
 	 *__event_enter_##sname = &event_enter_##sname;
 
 #define SYSCALL_TRACE_EXIT_EVENT(sname)					\
@@ -161,7 +161,7 @@ extern struct trace_event_functions exit_syscall_print_funcs;
 		.flags                  = TRACE_EVENT_FL_CAP_ANY,	\
 	};								\
 	static struct trace_event_call __used				\
-	  __attribute__((section("_ftrace_events")))			\
+	  __section("_ftrace_events")					\
 	*__event_exit_##sname = &event_exit_##sname;
 
 #define SYSCALL_METADATA(sname, nb, ...)			\
@@ -185,7 +185,7 @@ extern struct trace_event_functions exit_syscall_print_funcs;
 		.enter_fields	= LIST_HEAD_INIT(__syscall_meta_##sname.enter_fields), \
 	};							\
 	static struct syscall_metadata __used			\
-	  __attribute__((section("__syscalls_metadata")))	\
+	  __section("__syscalls_metadata")			\
 	 *__p_syscall_meta_##sname = &__syscall_meta_##sname;
 
 static inline int is_syscall_trace_event(struct trace_event_call *tp_event)
diff --git a/include/linux/trace_events.h b/include/linux/trace_events.h
index 30a8cdcfd4a4..b391fea86ff3 100644
--- a/include/linux/trace_events.h
+++ b/include/linux/trace_events.h
@@ -562,7 +562,7 @@ do {									\
 	tracing_record_cmdline(current);				\
 	if (__builtin_constant_p(fmt)) {				\
 		static const char *trace_printk_fmt			\
-		  __attribute__((section("__trace_printk_fmt"))) =	\
+		  __section("__trace_printk_fmt") =			\
 			__builtin_constant_p(fmt) ? fmt : NULL;		\
 									\
 		__trace_bprintk(ip, trace_printk_fmt, ##args);		\
diff --git a/include/linux/tracepoint.h b/include/linux/tracepoint.h
index 1fb11daa5c53..bd24b6f33cc8 100644
--- a/include/linux/tracepoint.h
+++ b/include/linux/tracepoint.h
@@ -116,7 +116,7 @@ static inline struct tracepoint *tracepoint_ptr_deref(tracepoint_ptr_t *p)
 
 #define __TRACEPOINT_ENTRY(name)					 \
 	static tracepoint_ptr_t __tracepoint_ptr_##name __used		 \
-	__attribute__((section("__tracepoints_ptrs"))) =		 \
+	__section("__tracepoints_ptrs") =		 \
 		&__tracepoint_##name
 #endif
 
@@ -281,9 +281,9 @@ static inline struct tracepoint *tracepoint_ptr_deref(tracepoint_ptr_t *p)
  */
 #define DEFINE_TRACE_FN(name, reg, unreg)				 \
 	static const char __tpstrtab_##name[]				 \
-	__attribute__((section("__tracepoints_strings"))) = #name;	 \
+	__section("__tracepoints_strings") = #name;	 \
 	struct tracepoint __tracepoint_##name				 \
-	__attribute__((section("__tracepoints"), used)) =		 \
+	__section("__tracepoints") __attribute__((used)) =		 \
 		{ __tpstrtab_##name, STATIC_KEY_INIT_FALSE, reg, unreg, NULL };\
 	__TRACEPOINT_ENTRY(name);
 
@@ -362,7 +362,7 @@ static inline struct tracepoint *tracepoint_ptr_deref(tracepoint_ptr_t *p)
 		static const char *___tp_str __tracepoint_string = str; \
 		___tp_str;						\
 	})
-#define __tracepoint_string	__attribute__((section("__tracepoint_str")))
+#define __tracepoint_string	__section("__tracepoint_str")
 #else
 /*
  * tracepoint_string() is used to save the string address for userspace
diff --git a/include/trace/bpf_probe.h b/include/trace/bpf_probe.h
index d6e556c0a085..95ab5c63a74c 100644
--- a/include/trace/bpf_probe.h
+++ b/include/trace/bpf_probe.h
@@ -75,7 +75,7 @@ static inline void bpf_test_probe_##call(void)				\
 	check_trace_callback_type_##call(__bpf_trace_##template);	\
 }									\
 static struct bpf_raw_event_map	__used					\
-	__attribute__((section("__bpf_raw_tp_map")))			\
+	__section("__bpf_raw_tp_map")					\
 __bpf_trace_tp_map_##call = {						\
 	.tp		= &__tracepoint_##call,				\
 	.bpf_func	= (void *)__bpf_trace_##template,		\
diff --git a/include/trace/trace_events.h b/include/trace/trace_events.h
index 4ecdfe2e3580..cdd536863620 100644
--- a/include/trace/trace_events.h
+++ b/include/trace/trace_events.h
@@ -44,7 +44,7 @@ TRACE_MAKE_SYSTEM_STR();
 		.eval_value = a				\
 	};						\
 	static struct trace_eval_map __used		\
-	__attribute__((section("_ftrace_eval_map")))	\
+	__section("_ftrace_eval_map")			\
 	*TRACE_SYSTEM##_##a = &__##TRACE_SYSTEM##_##a
 
 #undef TRACE_DEFINE_SIZEOF
@@ -57,7 +57,7 @@ TRACE_MAKE_SYSTEM_STR();
 		.eval_value = sizeof(a)			\
 	};						\
 	static struct trace_eval_map __used		\
-	__attribute__((section("_ftrace_eval_map")))	\
+	__section("_ftrace_eval_map")			\
 	*TRACE_SYSTEM##_##a = &__##TRACE_SYSTEM##_##a
 
 /*
@@ -632,7 +632,7 @@ static inline notrace int trace_event_get_offsets_##call(		\
  * // its only safe to use pointers when doing linker tricks to
  * // create an array.
  * static struct trace_event_call __used
- * __attribute__((section("_ftrace_events"))) *__event_<call> = &event_<call>;
+ * __section("_ftrace_events") *__event_<call> = &event_<call>;
  *
  */
 
@@ -782,7 +782,7 @@ static struct trace_event_call __used event_##call = {			\
 	.flags			= TRACE_EVENT_FL_TRACEPOINT,		\
 };									\
 static struct trace_event_call __used					\
-__attribute__((section("_ftrace_events"))) *__event_##call = &event_##call
+__section("_ftrace_events") *__event_##call = &event_##call
 
 #undef DEFINE_EVENT_PRINT
 #define DEFINE_EVENT_PRINT(template, call, proto, args, print)		\
@@ -799,6 +799,6 @@ static struct trace_event_call __used event_##call = {			\
 	.flags			= TRACE_EVENT_FL_TRACEPOINT,		\
 };									\
 static struct trace_event_call __used					\
-__attribute__((section("_ftrace_events"))) *__event_##call = &event_##call
+__section("_ftrace_events") *__event_##call = &event_##call
 
 #include TRACE_INCLUDE(TRACE_INCLUDE_FILE)
diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
index 136ce049c4ad..61474906187a 100644
--- a/kernel/kallsyms.c
+++ b/kernel/kallsyms.c
@@ -39,10 +39,10 @@ extern const u8 kallsyms_names[] __weak;
  * has one (eg: FRV).
  */
 extern const unsigned int kallsyms_num_syms
-__attribute__((weak, section(".rodata")));
+__section(".rodata") __attribute__((weak));
 
 extern const unsigned long kallsyms_relative_base
-__attribute__((weak, section(".rodata")));
+__section(".rodata") __attribute__((weak));
 
 extern const u8 kallsyms_token_table[] __weak;
 extern const u16 kallsyms_token_index[] __weak;
diff --git a/kernel/trace/trace_export.c b/kernel/trace/trace_export.c
index 45630a76ed3a..6f4ca26fd29f 100644
--- a/kernel/trace/trace_export.c
+++ b/kernel/trace/trace_export.c
@@ -188,7 +188,7 @@ struct trace_event_call __used event_##call = {				\
 	.flags			= TRACE_EVENT_FL_IGNORE_ENABLE,		\
 };									\
 struct trace_event_call __used						\
-__attribute__((section("_ftrace_events"))) *__event_##call = &event_##call;
+__section("_ftrace_events") *__event_##call = &event_##call;
 
 #undef FTRACE_ENTRY
 #define FTRACE_ENTRY(call, struct_name, etype, tstruct, print, filter)	\
-- 
2.15.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7ef58eb00bc46b4ea3fe49a8c45cd2ff06292247.camel%40perches.com.
